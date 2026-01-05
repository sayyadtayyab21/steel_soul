import 'package:flutter/material.dart';
import 'package:steel_soul/features/buildbadge/badge.dart';
import 'package:steel_soul/styles/urbanist_text_styles.dart';

class ItemCards extends StatelessWidget {
  const ItemCards({
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
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: const Color(0xFFE6F3FF),
          border: Border.all(
            color: scan == 'Completed' ? Colors.green : Colors.grey.shade200,
            width: 3,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              // Left side - ID and Badges
              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Aligns content to the left
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          left: BorderSide(color: Color(0xFF50C1E7), width: 3),
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
                          
                          // Space between ID and Badges
                    // Row(
                    //   children: [
                    //     // Scanned Quantity Badge
                    //     _buildBadge(
                    //       label: 'Scanned: $scannedPanels',
                    //       bgColor: Colors.white,
                    //       borderColor: Colors.orangeAccent,
                    //       textColor: Colors.black,
                    //     ),
                    //     const SizedBox(width: 8),
                    //     // Total Quantity Badge
                    //     _buildBadge(
                    //       label: 'Total: $totalPanels',
                    //       bgColor: Colors.white,
                    //       borderColor: Colors.blueAccent,
                    //       textColor: Colors.black,
                    //     ),
                    //   ],
                    // ),
                   
                  ],
                ),
              ),

              // Right side - View Button
              Container(
                height: 32,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xFF62CEFF), Color(0xFF1AA2E0)],
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ElevatedButton(
                  onPressed: onTap,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.white,
                    shadowColor: Colors.transparent,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'View',
                    style: UrbanistTextStyles.bodySmall.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to keep code clean

}
