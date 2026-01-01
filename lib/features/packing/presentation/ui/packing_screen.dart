import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steel_soul/core/di/injector.dart';
import 'package:steel_soul/core/model/model.dart';
import 'package:steel_soul/features/packing/model/packing_model.dart';
import 'package:steel_soul/features/packing/presentation/bloc/bloc_provider.dart';
import 'package:steel_soul/features/packing/presentation/bloc/scanner_cubit.dart';
import 'package:steel_soul/features/packing/presentation/ui/packing_item_details.dart';
import 'package:steel_soul/features/packing/presentation/widgets/packing_cards.dart';
import 'package:steel_soul/features/packing/presentation/widgets/scanner_button.dart';

import 'package:steel_soul/styles/urbanist_text_styles.dart';

class PackingScreen extends StatefulWidget {
  const PackingScreen({super.key});

  @override
  State<PackingScreen> createState() => _PackingScreenState();
}

class _PackingScreenState extends State<PackingScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  /// Helper method to refresh the project list
  Future<void> _onRefresh(BuildContext context) async {
    context.read<LaserCuttingCubit>().request();
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // 1. Project List Cubit
        BlocProvider(
          create: (_) => PackingBlocProvider.get().fetchLaserList()..request(),
        ),
        // 2. Scanner Cubit (Handles Image Picking & OCR)
        BlocProvider(create: (context) => $sl.get<ScannerCubit>()),
        // 3. Panel Status Cubit (Handles matching the scan to a specific panel)
        BlocProvider(
          create: (_) => PackingBlocProvider.get().fetchLaserPanelStatus(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MultiBlocListener(
            listeners: [
              // Listener 1: Watch the OCR/Scanner process
              BlocListener<ScannerCubit, ScannerState>(
                listener: (context, state) {
                  if (state.isExtracting) {
                    _showLoadingDialog(context);
                  } else {
                    // Safely pop the loading dialog
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

              // Listener 2: Watch the result of the Status Update API
              BlocListener<LaserCuttingPanelCubit, LaserCuttingPanelCubitState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: (data) {
                      // Refresh the list so the UI reflects the change
                      _onRefresh(context);

                      // Show success feedback with Blur effect
                      _showStatusSnackBar(
                        context,
                        // 'Success',
                        data.message ?? 'Panel Matched Successfully',
                        Colors.green,
                      );
                    },
                    failure: (error) {
                      _showStatusSnackBar(
                        context,
                        // 'Error',
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
                title: Text('Packing', style: UrbanistTextStyles.heading3),
                centerTitle: true,
              ),
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    _searchBar(),
                    const SizedBox(height: 10),
                    Expanded(
                      child: BlocBuilder<LaserCuttingCubit, LaserCuttingCubitState>(
                        builder: (context, state) {
                          return state.when(
                            initial: () => const SizedBox(),
                            loading: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            failure: (e) => Center(child: Text(e.error)),
                            success: (List<PackingModel> projects) {
                              final filteredProjects = projects.where((
                                project,
                              ) {
                                final id =
                                    project.projectId?.toLowerCase() ?? '';
                                return id.contains(_searchQuery.toLowerCase());
                              }).toList();

                              return RefreshIndicator(
                                color: const Color(0xFF5FD6FF),
                                onRefresh: () => _onRefresh(context),
                                child: filteredProjects.isEmpty
                                    ? ListView(
                                        children: const [
                                          SizedBox(height: 100),
                                          Center(
                                            child: Text('No projects found'),
                                          ),
                                        ],
                                      )
                                    : ListView.builder(
                                        itemCount: filteredProjects.length,
                                        physics:
                                            const AlwaysScrollableScrollPhysics(),
                                        itemBuilder: (context, index) {
                                          final project =
                                              filteredProjects[index];
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                              bottom: 6,
                                            ),
                                            child: PackingCards(
                                              id: project.projectId ?? '',
                                              date: project.date ?? '',
                                              scan:
                                                  project.laserCuttingStatus ??
                                                  '',
                                              time: project.time ?? '',
                                              onTap: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (_) =>
                                                        PackingItemDetails(
                                                          id:
                                                              project
                                                                  .projectId ??
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

  // --- UI Helpers (Mirroring LaserScanDetails) ---

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

  void _showBlurredStatusDialog(
    BuildContext context,
    String title,
    String message,
    Color color,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
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
        );
      },
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
          hintText: 'Search Project ID',
          prefixIcon: const Icon(Icons.search, color: Color(0xFFDB7b6c)),
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

  Widget _backButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFFDB7b6c),
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
