import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steel_soul/core/di/injector.dart';
import 'package:steel_soul/core/model/pair.dart';
import 'package:steel_soul/features/puf/model/puf_item_model.dart';
import 'package:steel_soul/features/puf/presentation/bloc/bloc_provider.dart';
import 'package:steel_soul/features/puf/presentation/bloc/scanner_cubit.dart';
import 'package:steel_soul/features/puf/presentation/ui/puf_scan_details.dart';
import 'package:steel_soul/features/puf/presentation/widgets/puf_item_cards.dart';
import 'package:steel_soul/features/puf/presentation/widgets/scanner_button.dart';

import 'package:steel_soul/styles/urbanist_text_styles.dart';

class PufItemDetails extends StatefulWidget {
  const PufItemDetails({super.key, required this.id});
  final String id;

  @override
  State<PufItemDetails> createState() => _PufItemDetailsState();
}

class _PufItemDetailsState extends State<PufItemDetails> {
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
              PufBlocProvider.get().fetchLaserItemsList()..request(widget.id),
        ),
        BlocProvider(create: (context) => $sl.get<ScannerCubit>()),
        BlocProvider(
          create: (_) => PufBlocProvider.get().fetchLaserPanelStatus(),
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
                          Pair(scannedId, state.base64Image??''),
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
                      _showBlurredStatusDialog(
                        context,
                        'Success',
                        data.message ?? 'Panel successfully updated',
                        Colors.green,
                      );
                    },
                    failure: (error) {
                      _showBlurredStatusDialog(
                        context,
                        'Match Failed',
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
                leading: Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFF1ad0d0),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
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
                                success: (List<PufItemModel> projects) {
                                  return ListView.builder(
                                    itemCount: projects.length,
                                    itemBuilder: (context, index) {
                                      final project = projects[index];
                                      print(project);
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 12,
                                        ),
                                        child: PufItemCards(
                                          id: project.unitCode ?? '',
                                          scan: project.status ??'',

                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) => PufScanDetails(
                                                  projectId: widget.id,
                                                  unit: project.unitCode ?? '',
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    },
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

 
  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );
  }

  void _showBlurredStatusDialog(
      BuildContext context, String title, String message, Color color) {
    showDialog(
      context: context,
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: Text(title,
              style: UrbanistTextStyles.heading3.copyWith(color: color)),
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
          prefixIcon: const Icon(Icons.search, color: Color(0xFF1ad0d0),),
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
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
    );
  }
}

