import 'package:flutter/material.dart';

import 'package:steel_soul/styles/urbanist_text_styles.dart';


class ScanDetail {
  final String itemId;
  final String itemDescription;
  final bool isScanned;

  ScanDetail(this.itemId, this.itemDescription, this.isScanned);
}

class PowderCoatingScanDetails extends StatefulWidget {
  final String projectId;
  const PowderCoatingScanDetails({super.key, required this.projectId});

  @override
  State<PowderCoatingScanDetails> createState() => _PowderCoatingScanDetailsState();
}

class _PowderCoatingScanDetailsState extends State<PowderCoatingScanDetails> {
  // Dummy list of items for the project
  final List<ScanDetail> items = [
    ScanDetail('001 TV1 FIP', 'Part 1', true),
    ScanDetail('001 TV1 WEP', 'Part 2', false),
    ScanDetail('001 TV1 IHS', 'Part 3', true),
    ScanDetail('001 TV1 LHS', 'Part 4', false),
    ScanDetail('001 TV1 UFS', 'Part 5', true),
    ScanDetail('001 TV1 BFP', 'Part 6', false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFFFFb23f),
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: Text(
          widget.projectId,
          style: UrbanistTextStyles.heading3,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            // List of Scannable Items
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return _buildScanDetailCard(context, item);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 108,
        height: 42,
        child: FloatingActionButton.extended(
          onPressed: () {
            // Navigate to the Barcode Scanner Page
           
          },
          backgroundColor: const Color(0xFFFFb23f),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          icon: const Icon(Icons.add, color: Colors.white),
          label: const Text(
            'Scan',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildScanDetailCard(BuildContext context, ScanDetail item) {
    final bool isScanned = item.isScanned;
    final Color statusColor = isScanned ? Colors.green : Colors.red;

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFFdf2e3),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.itemId,
                  style: UrbanistTextStyles.bodyMedium.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  item.itemDescription,
                  style: UrbanistTextStyles.bodySmall.copyWith(
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 32,
            width: 80,
            decoration: BoxDecoration(
              color: statusColor.withOpacity(0.15),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                isScanned ? 'Scanned' : 'Not Scanned',
                style: UrbanistTextStyles.bodySmall.copyWith(
                  color: statusColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}