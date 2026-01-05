
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:steel_soul/core/di/injector.dart';
import 'package:steel_soul/core/model/pair.dart' show Pair;
import 'package:steel_soul/core/model/triple.dart';
import 'package:steel_soul/features/buildbadge/summarybox.dart';

import 'package:steel_soul/features/powder_coating/model/scanner_details_model.dart';
import 'package:steel_soul/features/powder_coating/presentation/bloc/bloc_provider.dart';
import 'package:steel_soul/features/powder_coating/presentation/bloc/scanner_cubit.dart';
import 'package:steel_soul/features/powder_coating/presentation/widgets/scanner_button.dart';



import 'package:steel_soul/styles/urbanist_text_styles.dart';

class PowderCoatingScanDetails extends StatefulWidget {
  const PowderCoatingScanDetails({
    super.key,
    required this.projectId,
    required this.unit,
  });
  final String projectId;
  final String unit;

  @override
  State<PowderCoatingScanDetails> createState() => _PowderCoatingScanDetailsState();
}
// ... (imports remain the same)

class _PowderCoatingScanDetailsState extends State<PowderCoatingScanDetails> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              PowderCoatingBlocProvider.get().fetchLaserScanList()
                ..request(Pair<String, String>(widget.projectId, widget.unit)),
        ),
        BlocProvider(create: (context) => $sl.get<ScannerCubit>()),
        // This provides the Panel Status Cubit to the tree
        BlocProvider(
          create: (_) => PowderCoatingBlocProvider.get().fetchLaserPanelStatus(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MultiBlocListener(
            listeners: [
              // 1. Listen to the Image Scanner (OCR)
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
                        state.captureTime?.toIso8601String(),
                      ),
                    );
                    context.read<ScannerCubit>().reset();
                  }


                  if (state.error != null) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.error!.error)));
                  }
                },
              ),
              // 2. Listen to the Panel Status API (The one you just triggered)
              BlocListener<LaserCuttingPanelCubit, LaserCuttingPanelCubitState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: (data) {
                      // Refresh the list first
                      context.read<LaserCuttingScanCubit>().request(
                        Pair<String, String>(widget.projectId, widget.unit),
                      );
                      // Show the Blur Dialog
                      _showStatusSnackBar(
                        context,
                        // 'Success',
                        data.message ?? 'Scan Successful',
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
                leading: Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFffb23f),
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
                          final scannedList = items.cast<SacnnerDetailsModel>();
                          final int total = scannedList.length;
                          final int scanned = scannedList
                              .where((item) => item.status == 'Scanned')
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
                        // Show empty string or 0 ^ 0 while loading
                        orElse: () => const SizedBox.shrink(),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                    Expanded(
                      child:
                          BlocBuilder<
                            LaserCuttingScanCubit,
                            LaserCuttingScanCubitState
                          >(
                            builder: (context, state) {
                              
                              return state.when(
                                initial: () => const SizedBox(),
                                loading: () => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                                failure: (e) =>
                                    Center(child: Text('//${e.error}')),
                                success: (items) {
                                  final scannedItems = items
                                      .cast<SacnnerDetailsModel>();
                                  if (scannedItems.isEmpty) {
                                    return const Center(
                                      child: Text('No items found'),
                                    );
                                  }
                                  return ListView.builder(
                                    itemCount: scannedItems.length,
                                    itemBuilder: (context, index) {
                                      return _buildScanDetailCard(
                                        context,
                                        scannedItems[index],
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
              style: UrbanistTextStyles.bodyMedium.copyWith(color: Colors.white),
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
      barrierDismissible: true, // Allow tapping outside to close
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ColorFilter.mode(
            Colors.black.withOpacity(0.2),
            BlendMode.darken,
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5,
            ), // Adjust blur intensity here
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
      },
    );
  }

  // Simple loading helper
  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildScanDetailCard(BuildContext context, SacnnerDetailsModel item) {
    final bool isScanned = item.status == 'Scanned';
    final Color statusColor = isScanned
        ? const Color(0xff3db678)
        : const Color(0xff858585);

    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFfdf2e3),
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
                        color: Color(0xFFffb23f),
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
                item.status ?? 'Unknown',
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
