import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steel_soul/core/di/injector.dart';

import 'package:steel_soul/core/model/triple.dart';
import 'package:steel_soul/features/plastic_film/model/plastic_film_item_model.dart';
import 'package:steel_soul/features/plastic_film/presentation/bloc/bloc_provider.dart';
import 'package:steel_soul/features/plastic_film/presentation/bloc/scanner_cubit.dart';
import 'package:steel_soul/features/plastic_film/presentation/ui/plastic_film_scan_details.dart';
import 'package:steel_soul/features/plastic_film/presentation/widgets/plastic_film_item_cards.dart';
import 'package:steel_soul/features/plastic_film/presentation/widgets/scanner_button.dart';

import 'package:steel_soul/styles/urbanist_text_styles.dart';

class PlasticFilmItemDetails extends StatefulWidget {
  const PlasticFilmItemDetails({super.key, required this.id});
  final String id;

  @override
  State<PlasticFilmItemDetails> createState() => _PlasticFilmItemDetailsState();
}

class _PlasticFilmItemDetailsState extends State<PlasticFilmItemDetails> {
  // 1. Controller for Search
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // 2. Helper method to trigger Bloc refresh
  Future<void> _onRefresh(BuildContext context) async {
    context.read<LaserCuttingItemsCubit>().request(widget.id);
    // Small delay to ensure the UI shows the refresh state
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              PlasticFilmBlocProvider.get().fetchLaserItemsList()
                ..request(widget.id),
        ),
        BlocProvider(create: (context) => $sl.get<ScannerCubit>()),
        BlocProvider(
          create: (_) => PlasticFilmBlocProvider.get().fetchLaserPanelStatus(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MultiBlocListener(
            listeners: [
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
                    final String scannedId = state.extractedWeight!.trim();
                    context.read<LaserCuttingPanelCubit>().request(
                      Triple(
                        scannedId,
                        state.base64Image ?? '',
                        state.captureTime!.toIso8601String(),
                      ),
                    );
                    context.read<ScannerCubit>().reset();
                  }

                  if (state.error != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(state.error!.error),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
              ),
              BlocListener<LaserCuttingPanelCubit, LaserCuttingPanelCubitState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: (data) {
                      _onRefresh(context); // Refresh items after scan success
                      _showStatusSnackBar(
                        context,
                        // 'Success',
                        data.message ?? 'Panel successfully updated',
                        Colors.green,
                      );
                    },
                    failure: (error) {
                      _showStatusSnackBar(
                        context,
                        // 'Match Failed',
                        error.error,
                        Colors.red,
                      );
                    },
                  );
                },
              ),
            ],
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: _backButton(context),
                title: Text(widget.id, style: UrbanistTextStyles.heading3),
                centerTitle: true,
              ),
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    _searchBar(),
                    const SizedBox(height: 20),
                    Expanded(
                      child: BlocBuilder<LaserCuttingItemsCubit, LaserCuttingItemsCubitState>(
                        builder: (context, state) {
                          return state.when(
                            initial: () => const SizedBox(),
                            loading: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            failure: (e) => Center(child: Text(e.error)),
                            success: (List<PlasticFilmItemModel> items) {
                              // 3. APPLY SEARCH FILTER
                              final filteredItems = items.where((item) {
                                final unitCode =
                                    item.unitCode?.toLowerCase() ?? '';
                                return unitCode.contains(
                                  _searchQuery.toLowerCase(),
                                );
                              }).toList();

                              // 4. WRAP IN REFRESH INDICATOR
                              return RefreshIndicator(
                                color: const Color(0xFF5FD6FF),
                                onRefresh: () => _onRefresh(context),
                                child: filteredItems.isEmpty
                                    ? ListView(
                                        children: [
                                          const SizedBox(height: 100),
                                          Center(
                                            child: Text(
                                              _searchQuery.isEmpty
                                                  ? 'No items found'
                                                  : 'No matching unit code found',
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
                                              bottom: 6,
                                            ),
                                            child: PlasticFilmItemCards(
                                              id: item.unitCode ?? '',
                                              scan: item.status ?? '',
                                              totalPanels:
                                                  item.totalPanels ?? 0,
                                              scannedPanels:
                                                  item.scannedPanels ?? 0,

                                              onTap: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (_) =>
                                                        PlasticFilmScanDetails(
                                                          projectId: widget.id,
                                                          unit:
                                                              item.unitCode ??
                                                              '',
                                                        ),
                                                  ),
                                                );
                                                if (context.mounted) {
                                                  debugPrint(
                                                    'Returned from details, refreshing items...',
                                                  );
                                                  _onRefresh(context);
                                                }
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

  // --- UI Helpers ---

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
          prefixIcon: const Icon(Icons.search, color: Color(0xFf8490ff)),
          suffixIcon: _searchQuery.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.clear, size: 20),
                  onPressed: () {
                    _searchController.clear();
                    setState(() => _searchQuery = '');
                  },
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

  void _showStatusSnackBar(BuildContext context, String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(
              color == Colors.green ? Icons.check_circle : Icons.error,
              color: Colors.white,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                message,
                style: UrbanistTextStyles.bodyMedium.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: color,
        behavior: SnackBarBehavior.floating, // Makes it float above the UI
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.all(16),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  Widget _backButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFf8490ff),
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.pop(context),
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

  void _showBlurredStatusDialog(
    BuildContext context,
    String title,
    String message,
    Color color,
  ) {
    showDialog(
      context: context,
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Text(
            title,
            style: UrbanistTextStyles.heading3.copyWith(color: color),
          ),
          content: Text(message, style: UrbanistTextStyles.bodyMedium),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}
