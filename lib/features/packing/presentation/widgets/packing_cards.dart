import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:steel_soul/styles/urbanist_text_styles.dart';

class PackingCards extends StatefulWidget {
  const PackingCards({
    super.key,
    required this.id,
    required this.date,
    required this.onTap,
    required this.scan,
  });
  final String id;
  final String date;
  final String scan;
  final Function() onTap;

  @override
  State<PackingCards> createState() => _PackingCardsState();
}

class _PackingCardsState extends State<PackingCards> {
  @override
  Widget build(BuildContext context) {
    // Date formatting logic
    String formattedDate = '';
    try {
      // widget.date is accessed via the State object
      DateTime parsedDate = DateTime.parse(widget.date);
      formattedDate = DateFormat('dd-MM-yyyy').format(parsedDate);
    } catch (e) {
      // Fallback to raw string if parsing fails (e.g. if already formatted)
      formattedDate = widget.date;
    }

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFFFEDED),
          border: Border.all(
            color: widget.scan == 'Completed'
                ? Colors.green
                : Colors.grey.shade200,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Left side - Project ID
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: Color(0xFFDB7b6c),
                          width: 3,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.id,
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Right side - Formatted Date and View button
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    formattedDate, // Displaying the formatted date here
                    style: UrbanistTextStyles.bodySmall.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 32,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFFF6997F), Color(0xFFDB7B6C)],
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ElevatedButton(
                      onPressed: widget.onTap,
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
