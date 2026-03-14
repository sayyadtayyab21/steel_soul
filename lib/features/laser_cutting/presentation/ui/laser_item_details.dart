import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steel_soul/core/di/injector.dart';
import 'package:steel_soul/core/model/quint.dart';
import 'package:steel_soul/core/model/triple.dart';
import 'package:steel_soul/features/laser_cutting/presentation/bloc/bloc_provider.dart';
import 'package:steel_soul/features/laser_cutting/presentation/bloc/scanner_cubit.dart';
import 'package:steel_soul/features/laser_cutting/presentation/ui/laser_scan_details.dart';
import 'package:steel_soul/features/laser_cutting/presentation/widgets/item_cards.dart';
import 'package:steel_soul/features/laser_cutting/presentation/widgets/scanner_button.dart';
import 'package:steel_soul/styles/urbanist_text_styles.dart';

class LaserItemDetails extends StatefulWidget {
  final String id;
  final Map<String, dynamic> sheets;
  final String laserCuttingStatus;

  const LaserItemDetails({
    super.key,
    required this.id,
    required this.sheets,
    required this.laserCuttingStatus,
  });

  @override
  State<LaserItemDetails> createState() => _LaserItemDetailsState();
}

class _LaserItemDetailsState extends State<LaserItemDetails> {
  final TextEditingController _searchController = TextEditingController();

  final ValueNotifier<String?> selectedSheetType = ValueNotifier(null);
  final ValueNotifier<int> fullSheetCount = ValueNotifier(0);
  final ValueNotifier<int> halfSheetCount = ValueNotifier(0);
  final ValueNotifier<int> quarterSheetCount = ValueNotifier(0);
  final ValueNotifier<String> searchQuery = ValueNotifier('');

  bool _hasChanges = false;

  final List<String> sheetTypes = [
    'M.S - 0.6mm',
    'M.S - 0.8mm',
    'M.S - 1.0mm',
    'M.S - 1.2mm',
    'S.S - 0.8mm',
    'S.S - 1.0mm',
  ];

  /// UI dropdown → API sheet key mapping
  final Map<String, String> sheetKeyMap = {
    'M.S - 0.6mm': 'MS 0.6 mm',
    'M.S - 0.8mm': 'MS 0.8 mm',
    'M.S - 1.0mm': 'MS 1.0 mm',
    'M.S - 1.2mm': 'MS 1.2 mm',
    'S.S - 0.8mm': 'SS 0.8 mm',
    'S.S - 1.0mm': 'SS 1.0 mm',
  };

  @override
  void initState() {
    super.initState();

    /// load first sheet by default
    selectedSheetType.value = sheetTypes.first;
    _loadSelectedSheet(sheetTypes.first);
  }

  void _loadSelectedSheet(String type) {
    final key = sheetKeyMap[type];
    final sheet = widget.sheets[key];

    fullSheetCount.value = sheet?.fullSheet ?? 0;
    halfSheetCount.value = sheet?.halfSheet ?? 0;
    quarterSheetCount.value = sheet?.quarterSheet ?? 0;
  }

  Future<void> _onRefresh(BuildContext context) async {
    context.read<LaserCuttingItemsCubit>().request(widget.id);
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  void dispose() {
    _searchController.dispose();
    selectedSheetType.dispose();
    fullSheetCount.dispose();
    halfSheetCount.dispose();
    quarterSheetCount.dispose();
    searchQuery.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log('Building LaserItemDetails for project: ${widget.id}');

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (_) =>
                  LaserCuttingBlocProvider.get().fetchLaserItemsList()
                    ..request(widget.id),
        ),
        BlocProvider(create: (_) => $sl.get<ScannerCubit>()),
        BlocProvider(
          create: (_) => LaserCuttingBlocProvider.get().fetchLaserPanelStatus(),
        ),
        BlocProvider(
          create:
              (_) =>
                  LaserCuttingBlocProvider.get().fetchLaserUpdateSheetStatus(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          /// Save Sheet Counts Listener
          BlocListener<
            LaserCuttiingUpdateSheetCubit,
            LaserCuttiingUpdateSheetCubitState
          >(
            listener: (context, state) {
              state.whenOrNull(
                success: (data) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        // ignore: prefer_single_quotes
                        data.message ?? "Sheet counts updated successfully",
                        style: const TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.green,
                      behavior: SnackBarBehavior.floating,
                      margin: const EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  );
                },
                failure: (error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        error.error,
                        style: const TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.red,
                      behavior: SnackBarBehavior.floating,
                      margin: const EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
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
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _searchBar(),
                const SizedBox(height: 10),
                _buildSheetCounterSection(context),
                const SizedBox(height: 10),
                Expanded(child: _buildItemsList()),
              ],
            ),
          ),
          floatingActionButton: const ScannerButton(),
        ),
      ),
    );
  }

  Widget _buildItemsList() {
    return BlocBuilder<LaserCuttingItemsCubit, LaserCuttingItemsCubitState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loading: () => const Center(child: CircularProgressIndicator()),
          failure: (e) => Center(child: Text(e.error)),
          success: (items) {
            return ValueListenableBuilder<String>(
              valueListenable: searchQuery,
              builder: (context, query, _) {
                final filteredItems =
                    items
                        .where(
                          (item) => (item.unitCode ?? '')
                              .toLowerCase()
                              .contains(query.toLowerCase()),
                        )
                        .toList();

                return RefreshIndicator(
                  color: const Color(0xFF5FD6FF),
                  onRefresh: () => _onRefresh(context),
                  child:
                      filteredItems.isEmpty
                          ? const Center(child: Text('No items found'))
                          : ListView.builder(
                            itemCount: filteredItems.length,
                            itemBuilder: (context, index) {
                              final item = filteredItems[index];

                              return Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: ItemCards(
                                  id: item.unitCode ?? '',
                                  scan: item.laserCuttingStatus ?? '',
                                  totalPanels: item.totalPanels ?? 0,
                                  scannedPanels: item.scannedPanels ?? 0,
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (_) => LaserScanDetails(
                                              projectId: widget.id,
                                              unit: item.unitCode ?? '',
                                            ),
                                      ),
                                    );

                                    if (context.mounted) {
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
        );
      },
    );
  }

  Widget _buildSheetCounterSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Project Sheet Inventory',
                style: UrbanistTextStyles.bodyMedium.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ValueListenableBuilder<String?>(
                  valueListenable: selectedSheetType,
                  builder: (context, value, _) {
                    return DropdownButtonFormField<String>(
                      value: value,
                      decoration: InputDecoration(
                        labelText: 'Select Sheet Type',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                      ),
                      items:
                          sheetTypes
                              .map(
                                (sheet) => DropdownMenuItem(
                                  value: sheet,
                                  child: Text(sheet),
                                ),
                              )
                              .toList(),
                      onChanged: (val) {
                        if (val == null) return;
                        selectedSheetType.value = val;
                        _loadSelectedSheet(val);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              ValueListenableBuilder<int>(
                valueListenable: fullSheetCount,
                builder:
                    (_, value, __) => _buildCounterItem(
                      'Full Sheet',
                      value,
                      (v) => fullSheetCount.value = v,
                    ),
              ),
           
              ValueListenableBuilder<int>(
                valueListenable: halfSheetCount,
                builder:
                    (_, value, __) => _buildCounterItem(
                      'Half Sheet',
                      value,
                      (v) => halfSheetCount.value = v,
                    ),
              ),
            
              ValueListenableBuilder<int>(
                valueListenable: quarterSheetCount,
                builder:
                    (_, value, __) => _buildCounterItem(
                      'Quarter Sheet',
                      value,
                      (v) => quarterSheetCount.value = v,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ValueListenableBuilder<String?>(
              valueListenable: selectedSheetType,
              builder: (context, type, _) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        widget.laserCuttingStatus == 'Completed'
                            ? Colors.grey
                            : const Color(0xFF5FD6FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
              
                  onPressed:
                      (type == null || widget.laserCuttingStatus == 'Completed')
                          ? null
                          : () {
                            context
                                .read<LaserCuttiingUpdateSheetCubit>()
                                .request(
                                  Quint(
                                    widget.id,
                                    type,
                                    fullSheetCount.value,
                                    halfSheetCount.value,
                                    quarterSheetCount.value,
                                  ),
                                );
                          },
                  child: const Text(
                    'SAVE SHEET COUNTS',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
Widget _buildCounterItem(String label, int value, Function(int)? onChanged) {
  return Expanded(
    child: Column(
      children: [
        Text(
          label,
          style: UrbanistTextStyles.bodySmall.copyWith(fontSize: 12),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFF5FD6FF)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: onChanged == null
                    ? null
                    : () => value > 0 ? onChanged(value - 1) : null,
                child: const Padding(
                  padding: EdgeInsets.all(6),
                  child: Icon(
                    Icons.remove,
                    size: 16,
                    color: Color(0xFF5FD6FF),
                  ),
                ),
              ),
    
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Text(
                  '$value',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
    
              InkWell(
                onTap: onChanged == null ? null : () => onChanged(value + 1),
                child: const Padding(
                  padding: EdgeInsets.all(6),
                  child: Icon(
                    Icons.add,
                    size: 16,
                    color: Color(0xFF5FD6FF),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
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
        onChanged: (value) => searchQuery.value = value,
        decoration: const InputDecoration(
          hintText: 'Search Unit Code',
          prefixIcon: Icon(Icons.search, color: Color(0xFF5FD6FF)),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
    );
  }

  Widget _backButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFF5FD6FF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.pop(context, _hasChanges),
      ),
    );
  }
}
