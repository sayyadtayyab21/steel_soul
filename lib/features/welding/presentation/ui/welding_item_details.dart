import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steel_soul/core/di/injector.dart';
import 'package:steel_soul/core/model/quad.dart';
import 'package:steel_soul/core/model/triple.dart';
import 'package:steel_soul/features/welding/presentation/bloc/bloc_provider.dart';
import 'package:steel_soul/features/welding/presentation/bloc/scanner_cubit.dart';
import 'package:steel_soul/features/welding/presentation/ui/welding_scan_details.dart';
import 'package:steel_soul/features/welding/presentation/widgets/scanner_button.dart';
import 'package:steel_soul/features/welding/presentation/widgets/welding_item_cards.dart';


import 'package:steel_soul/styles/urbanist_text_styles.dart';

class WeldingItemDetails extends StatefulWidget {
  WeldingItemDetails({
    super.key,
    required this.id,
    required this.fullProjectSheetCount,
    required this.halfProjectSheetCount,
    required this.quarterProjectSheetCount,
  });

  final String id;
  int fullProjectSheetCount;
  int halfProjectSheetCount;
  int quarterProjectSheetCount;

  @override
  State<WeldingItemDetails> createState() => _LaserItemDetailsState();
}

class _LaserItemDetailsState extends State<WeldingItemDetails> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  late int fullSheetCount;
  late int halfSheetCount;
  late int quarterSheetCount;

  // Track if a save was successful to notify the parent screen
  bool _hasChanges = false;

  @override
  void initState() {
    super.initState();
    // Initialize local state with values passed from the project list
    fullSheetCount = widget.fullProjectSheetCount;
    halfSheetCount = widget.halfProjectSheetCount;
    quarterSheetCount = widget.quarterProjectSheetCount;
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _onRefresh(BuildContext context) async {
    context.read<LaserCuttingItemsCubit>().request(widget.id);
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    log(
      'Building WeldingItemDetails for project: ${widget.fullProjectSheetCount}',
    );
    log(
      'Building WeldingItemDetails for project: ${widget.halfProjectSheetCount}',
    );
    log(
      'Building WeldingItemDetails for project: ${widget.quarterProjectSheetCount}',
    );
    log('Building WeldingItemDetails for project: ${widget.id}');

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              WeldingBlocProvider.get().fetchLaserItemsList()
                ..request(widget.id),
        ),
        BlocProvider(create: (context) => $sl.get<ScannerCubit>()),
        BlocProvider(
          create: (_) => WeldingBlocProvider.get().fetchLaserPanelStatus(),
        ),
        BlocProvider(
          create: (_) =>
              WeldingBlocProvider.get().fetchLaserUpdateSheetStatus(),
        ),
      ],
      child: Builder(
        builder: (innerContext) {
          return MultiBlocListener(
            listeners: [
              // 1. Scanner Listener
              BlocListener<ScannerCubit, ScannerState>(
                listener: (context, state) {
                  if (state.isExtracting) {
                    _showLoadingDialog(context);
                  } else {
                    if (Navigator.of(context, rootNavigator: true).canPop()) {
                      Navigator.of(context, rootNavigator: true).pop();
                    }
                  }
                  if (state.extractedWeight != null) {
                    context.read<LaserCuttingPanelCubit>().request(
                      Triple(
                        state.extractedWeight!.trim(),
                        state.base64Image,
                        state.captureTime?.toIso8601String(),
                      ),
                    );
                    context.read<ScannerCubit>().reset();
                  }
                },
              ),
              // 2. Panel Update Listener
              BlocListener<LaserCuttingPanelCubit, LaserCuttingPanelCubitState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: (data) {
                      _onRefresh(context);
                      _showStatusSnackBar(
                        context,
                        data.message ?? 'Panel updated',
                        Colors.green,
                      );
                    },
                    failure: (error) =>
                        _showStatusSnackBar(context, error.error, Colors.red),
                  );
                },
              ),
              // 3. Sheet Count Update Listener
              BlocListener<
                LaserCuttiingUpdateSheetCubit,
                LaserCuttiingUpdateSheetCubitState
              >(
                listener: (context, state) {
                  state.whenOrNull(
                    success: (data) {
                      setState(
                        () => _hasChanges = true,
                      ); // Mark that we need to refresh the main screen
                      _showStatusSnackBar(
                        context,
                        data.message ?? 'Sheet counts updated successfully',
                        Colors.green,
                      );
                    },
                    failure: (error) =>
                        _showStatusSnackBar(context, error.error, Colors.red),
                  );
                },
              ),
            ],
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: _backButton(innerContext),
                title: Text(widget.id, style: UrbanistTextStyles.heading3),
                centerTitle: true,
              ),
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    _searchBar(),
                    const SizedBox(height: 10),
                    // _buildSheetCounterSection(innerContext),
                    // const SizedBox(height: 10),
                    Expanded(
                      child:
                          BlocBuilder<
                            LaserCuttingItemsCubit,
                            LaserCuttingItemsCubitState
                          >(
                            builder: (context, state) {
                              return state.when(
                                initial: () => const SizedBox(),
                                loading: () => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                                failure: (e) => Center(child: Text(e.error)),
                                success: (items) {
                                  final filteredItems = items
                                      .where(
                                        (item) => (item.unitCode ?? '')
                                            .toLowerCase()
                                            .contains(
                                              _searchQuery.toLowerCase(),
                                            ),
                                      )
                                      .toList();

                                  return RefreshIndicator(
                                    color: const Color.fromARGB(255, 255, 152, 92),
                                    onRefresh: () => _onRefresh(context),
                                    child: filteredItems.isEmpty
                                        ? ListView(
                                            children: const [
                                              Center(
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 50,
                                                  ),
                                                  child: Text('No items found'),
                                                ),
                                              ),
                                            ],
                                          )
                                        : ListView.builder(
                                            itemCount: filteredItems.length,
                                            physics:
                                                const AlwaysScrollableScrollPhysics(),
                                            itemBuilder: (context, index) {
                                              final item = filteredItems[index];
                                              return Padding(
                                                padding: const EdgeInsets.only(
                                                  bottom: 8,
                                                ),
                                                child: WeldingItemCards(
                                                  id: item.unitCode ?? '',
                                                  scan:
                                                      item.status ??
                                                      '',
                                                  totalPanels:
                                                      item.totalPanels ?? 0,
                                                  scannedPanels:
                                                      item.scannedPanels ?? 0,
                                                  onTap: () async {
                                                    await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (_) =>
                                                            WeldingScanDetails(
                                                              projectId:
                                                                  widget.id,
                                                              unit:
                                                                  item.unitCode ??
                                                                  '',
                                                            ),
                                                      ),
                                                    );
                                                    if (context.mounted)
                                                      _onRefresh(context);
                                                  },
                                                ),
                                              );
                                            },
                                          ),
                                  );
                                },
                              );
                            },
                          ),
                    ),
                  ],
                ),
              ),
              floatingActionButton: const ScannerButton(),
            ),
          );
        },
      ),
    );
  }

  // Widget _buildSheetCounterSection(BuildContext context) {
  //   return Container(
  //     padding: const EdgeInsets.all(8),
  //     decoration: BoxDecoration(
  //       color: Colors.white,
  //       borderRadius: BorderRadius.circular(12),
  //       boxShadow: const [
  //         BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
  //       ],
  //       border: Border.all(color: Colors.grey[200]!),
  //     ),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text(
  //           'Project Sheet Inventory',
  //           style: UrbanistTextStyles.bodyMedium.copyWith(
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //         const SizedBox(height: 6),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             _buildCounterItem(
  //               'Full Sheet',
  //               fullSheetCount,
  //               // fullSheetCount,
  //               (val) => setState(() => fullSheetCount = val),
  //             ),
  //             _buildCounterItem(
  //               'Half Sheet',
  //               halfSheetCount,
  //               (val) => setState(() => halfSheetCount = val),
  //             ),
  //             _buildCounterItem(
  //               'Quarter Sheet',
  //               quarterSheetCount,
  //               (val) => setState(() => quarterSheetCount = val),
  //             ),
  //           ],
  //         ),
  //         const SizedBox(height: 16),
  //         SizedBox(
  //           width: double.infinity,
  //           height: 48,
  //           child: ElevatedButton(
  //             style: ElevatedButton.styleFrom(
  //               backgroundColor: const Color(0xFF5FD6FF),
  //               shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(8),
  //               ),
  //               elevation: 0,
  //             ),
  //             onPressed: () {
  //               context.read<LaserCuttiingUpdateSheetCubit>().request(
  //                 Quad(
  //                   widget.id,
  //                   fullSheetCount,
  //                   halfSheetCount,
  //                   quarterSheetCount,
  //                 ),
  //               );
  //             },
  //             child:
  //                 BlocBuilder<
  //                   LaserCuttiingUpdateSheetCubit,
  //                   LaserCuttiingUpdateSheetCubitState
  //                 >(
  //                   builder: (context, state) {
  //                     return state.maybeWhen(
  //                       loading: () => const SizedBox(
  //                         height: 20,
  //                         width: 20,
  //                         child: CircularProgressIndicator(
  //                           color: Colors.white,
  //                           strokeWidth: 2,
  //                         ),
  //                       ),
  //                       orElse: () => const Text(
  //                         'SAVE SHEET COUNTS',
  //                         style: TextStyle(
  //                           color: Colors.white,
  //                           fontWeight: FontWeight.bold,
  //                         ),
  //                       ),
  //                     );
  //                   },
  //                 ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget _buildCounterItem(String label, int value, Function(int) onChanged) {
    return Column(
      children: [
        Text(label, style: UrbanistTextStyles.bodySmall.copyWith(fontSize: 12)),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFF5FD6FF)),
          ),
          child: Row(
            children: [
              IconButton(
                visualDensity: VisualDensity.compact,
                icon: const Icon(
                  Icons.remove,
                  size: 18,
                  color: Color(0xFF5FD6FF),
                ),
                onPressed: () => value > 0 ? onChanged(value - 1) : null,
              ),
              Text(
                '$value',
                style: UrbanistTextStyles.bodyMedium.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                visualDensity: VisualDensity.compact,
                icon: const Icon(Icons.add, size: 18, color: Color(0xFF5FD6FF)),
                onPressed: () => onChanged(value + 1),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _searchBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        controller: _searchController,
        onChanged: (value) => setState(() => _searchQuery = value),
        decoration: InputDecoration(
          hintText: 'Search Unit Code',
          prefixIcon: const Icon(Icons.search, color: const Color.fromARGB(255, 255, 152, 92),),
          suffixIcon: _searchQuery.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.clear, size: 20),
                  onPressed: () => setState(() {
                    _searchController.clear();
                    _searchQuery = '';
                  }),
                )
              : null,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
        ),
      ),
    );
  }

  Widget _backButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 152, 92),
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () =>
            Navigator.pop(context, _hasChanges), // Notify parent if changed
      ),
    );
  }

  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );
  }

  void _showStatusSnackBar(BuildContext context, String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: const TextStyle(color: Colors.white)),
        backgroundColor: color,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
