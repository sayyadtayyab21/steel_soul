import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:steel_soul/core/di/injector.dart';
import 'package:steel_soul/core/model/pair.dart' show Pair;
import 'package:steel_soul/core/model/triple.dart';
import 'package:steel_soul/features/buildbadge/summarybox.dart';

import 'package:steel_soul/features/laser_cutting/model/scanner_details_model.dart';
import 'package:steel_soul/features/laser_cutting/presentation/bloc/bloc_provider.dart';
import 'package:steel_soul/features/laser_cutting/presentation/bloc/scanner_cubit.dart';
import 'package:steel_soul/features/laser_cutting/presentation/widgets/scanner_button.dart';
import 'package:steel_soul/features/panel_result_dialog.dart';
import 'package:steel_soul/styles/urbanist_text_styles.dart';

class LaserScanDetails extends StatefulWidget {
  const LaserScanDetails({
    super.key,
    required this.projectId,
    required this.unit,
  });
  final String projectId;
  final String unit;

  @override
  State<LaserScanDetails> createState() => _LaserScanDetailsState();
}

class _LaserScanDetailsState extends State<LaserScanDetails> {
  Future<void> _handleRefresh(BuildContext context) async {
    context.read<LaserCuttingScanCubit>().request(
      Pair<String, String>(widget.projectId, widget.unit),
    );

    // Wait until the cubit is no longer loading
    await context.read<LaserCuttingScanCubit>().stream.firstWhere(
      (state) => !state.isLoading,
    );
  }

  Future<void> _onRefresh(BuildContext context) async {
    context.read<LaserCuttingItemsCubit>().request(widget.projectId);
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (_) =>
                  LaserCuttingBlocProvider.get().fetchLaserScanList()..request(
                    Pair<String, String>(widget.projectId, widget.unit),
                  ),
        ),
        BlocProvider(create: (context) => $sl.get<ScannerCubit>()),
        // This provides the Panel Status Cubit to the tree
        BlocProvider(
          create: (_) => LaserCuttingBlocProvider.get().fetchLaserPanelStatus(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MultiBlocListener(
            listeners: [
              // 1. Listen to the Image Scanner (OCR)
              BlocListener<ScannerCubit, ScannerState>(
                listener: (context, state) {
                  // 1. Handle Loading Dialog logic
                  if (state.isExtracting) {
                    PanelResultDailog.showLoading(context);
                  } else {
                    // Pop the loading dialog when extraction stops
                    if (Navigator.of(context, rootNavigator: true).canPop()) {
                      Navigator.of(context, rootNavigator: true).pop();
                    }
                  }

                  // 2. Handle Success (Text Extracted + Image Available)
                  if (state.extractedCodes != null &&
                      state.extractedCodes!.isNotEmpty) {
                    context.read<LaserCuttingPanelCubit>().request(
                      Triple(
                        state.extractedCodes!,
                        state.base64Image,
                        state.captureTime?.toIso8601String(),
                      ),
                    );
                    context.read<ScannerCubit>().reset();
                  }
                  // 3. Handle Errors
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
              // 2. Listen to the Panel Status API (The one you just triggered)
              BlocListener<LaserCuttingPanelCubit, LaserCuttingPanelCubitState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: (data) {
                      _onRefresh(context);
                      PanelResultDailog.showScanResult(
                        context,
                        status: data.status,
                        total: data.computedTotal,
                        success: data.computedSuccess,
                        failed: data.computedFailed,
                        results:
                            data.allResults
                                .map(
                                  (r) => PanelResultData(
                                    panelId: r.panelId,
                                    message: r.message,
                                    isSuccess: r.status == 'success',
                                  ),
                                )
                                .toList(),
                      );
                    },
                    failure: (error) {
                      PanelResultDailog.showScanResult(
                        context,
                        fallbackMessage: error.error,
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
                    color: const Color(0xFF5fd6ff),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                title: Text(widget.unit, style: UrbanistTextStyles.heading3),
                centerTitle: true,
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Column(
                  children: [
                    BlocBuilder<
                      LaserCuttingScanCubit,
                      LaserCuttingScanCubitState
                    >(
                      builder: (context, state) {
                        return state.maybeWhen(
                          success: (items) {
                            final scannedList =
                                items.cast<SacnnerDetailsModel>();
                            final int total = scannedList.length;
                            final int scanned =
                                scannedList
                                    .where(
                                      (item) =>
                                          item.laserCuttingStatus == 'Scanned',
                                    )
                                    .length;

                            return Row(
                              children: [
                                Expanded(
                                  child: SummaryBox(
                                    borderColor: const Color(0xFF64B5F6),
                                    label: 'Scanned Panels',
                                    colors: const [
                                      Color(0xFF62CEFF),
                                      Color(0xFF1AA2E0),
                                    ],
                                    value: '$scanned',
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: SummaryBox(
                                    borderColor: const Color(0xFFFFC1C4),
                                    label: 'Total Panels',
                                    colors: const [
                                      Color(0xFFFFA5A5),
                                      Color(0xFFFF7F7E),
                                    ],
                                    value: '$total',
                                  ),
                                ),
                              ],
                            );
                          },
                          orElse: () => const SizedBox.shrink(),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: BlocBuilder<
                        LaserCuttingScanCubit,
                        LaserCuttingScanCubitState
                      >(
                        builder: (context, state) {
                          return state.when(
                            initial: () => const SizedBox(),
                            loading:
                                () => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                            failure:
                                (e) => Center(child: Text('Error: ${e.error}')),
                            success: (items) {
                              final scannedItems =
                                  items.cast<SacnnerDetailsModel>();
                              if (scannedItems.isEmpty) {
                                return const Center(
                                  child: Text('No items found'),
                                );
                              }
                              return RefreshIndicator(
                                color: const Color(
                                  0xFF5fd6ff,
                                ), // Matches your app theme
                                onRefresh: () => _handleRefresh(context),
                                child: ListView.builder(
                                  itemCount: scannedItems.length,
                                  itemBuilder: (context, index) {
                                    return _buildScanDetailCard(
                                      context,
                                      scannedItems[index],
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

  Widget _buildScanDetailCard(BuildContext context, SacnnerDetailsModel item) {
    final bool isScanned = item.laserCuttingStatus == 'Scanned';
    final Color statusColor =
        isScanned ? const Color(0xff3db678) : const Color(0xff858585);

    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFE6F3FF),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isScanned ? Colors.green : Colors.grey.shade200,
          width: 3,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Color.fromARGB(255, 80, 193, 231),
                        width: 3,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      item.panelName ?? 'Unknown Panel',
                      style: UrbanistTextStyles.bodyMedium.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 32,
            width: 100,
            decoration: BoxDecoration(
              color: statusColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                item.laserCuttingStatus ?? 'Unknown',
                style: UrbanistTextStyles.bodySmall.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
