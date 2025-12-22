import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:steel_soul/core/di/injector.dart';
import 'package:steel_soul/core/model/pair.dart' show Pair;
import 'package:steel_soul/features/laser_cutting/model/scanner_details_model.dart';
import 'package:steel_soul/features/laser_cutting/presentation/bloc/bloc_provider.dart';
import 'package:steel_soul/features/laser_cutting/presentation/bloc/scanner_cubit.dart';
import 'package:steel_soul/features/laser_cutting/presentation/ui/scanner_button.dart';
import 'package:steel_soul/styles/urbanist_text_styles.dart';

class LaserScanDetails extends StatefulWidget {
  final String projectId;
  final String unit;
  const LaserScanDetails({
    super.key,
    required this.projectId,
    required this.unit,
  });

  @override
  State<LaserScanDetails> createState() => _LaserScanDetailsState();
}

class _LaserScanDetailsState extends State<LaserScanDetails> {
  

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              LaserCuttingBlocProvider.get().fetchLaserScanList()
                ..request(Pair<String, String>(widget.projectId, widget.unit)),
        ),
        BlocProvider(create: (context) => $sl.get<ScannerCubit>()),
      ],
      // Use a Builder to ensure context has access to the Providers above
      child: Builder(
        builder: (context) {
          return BlocListener<ScannerCubit, ScannerState>(
            listener: (context, state) {
              if (state.isExtracting) {
                _showLoadingDialog(context);
              } else {
                // Close loading dialog if it's open
                if (Navigator.of(context, rootNavigator: true).canPop()) {
                  Navigator.of(context, rootNavigator: true).pop();
                }
              }

              if (state.extractedWeight != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Extracted: ${state.extractedWeight}'),
                  ),
                );
              }

              if (state.error != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.error!.error ?? 'Error occurred'),
                  ),
                );
              }
            },
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
              floatingActionButton: const ScannerButton()
            )
          );
        },
      ),
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
    final bool isScanned = item.laserCuttingStatus == 'Scanned';
    final Color statusColor = isScanned
        ? const Color(0xff3db678)
        : const Color(0xff858585);

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
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
                      item.name ?? 'Unknown Panel',
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
