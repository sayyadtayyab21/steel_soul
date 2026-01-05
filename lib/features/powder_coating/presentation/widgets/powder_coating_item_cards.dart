import 'package:flutter/material.dart';
import 'package:steel_soul/features/buildbadge/badge.dart';
import 'package:steel_soul/styles/urbanist_text_styles.dart';

class PowderCoatingItemCards extends StatelessWidget {
  const PowderCoatingItemCards({
    super.key,
    required this.id,

    required this.onTap,
    required this.scan,
    required this.totalPanels,
    required this.scannedPanels,
  });
  final String id;
  final String scan;
  final int totalPanels;
  final int scannedPanels;

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFfdf2e3),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: scan == 'Completed' ? Colors.green : Colors.grey.shade200,
            width: 3,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              // Left side - Project ID
              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Aligns content to the left
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          left: BorderSide(color:   Color(0xFFffb23f), width: 3),
                        ),
                      ),
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            id,
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),

                    Row(
                      children: [
                        BuildBadge(
                          bgColor: Colors.white,
                          borderColor: Colors.orangeAccent,
                          label: 'Scanned: $scannedPanels',
                          textColor: Colors.black,
                        ),
                        const SizedBox(width: 8),
                        BuildBadge(
                          bgColor: Colors.white,
                          borderColor: Colors.blueAccent,
                          label: 'Total: $totalPanels',
                          textColor: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Right side - Date and View button
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 3),
                  Container(
                    height: 32, // Increased height slightly
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromARGB(255, 255, 200, 152),
                          Color(0xFFffb23f),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(
                        8,
                      ), // Match button shape
                    ),
                    child: ElevatedButton(
                      onPressed: onTap,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        shadowColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'View',
                        style: UrbanistTextStyles.bodySmall.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
