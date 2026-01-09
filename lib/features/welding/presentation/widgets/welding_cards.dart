import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:steel_soul/styles/urbanist_text_styles.dart';

class WeldingCards extends StatefulWidget {
  const WeldingCards({
    super.key,
    required this.id,
    required this.date,
    required this.onTap,
    required this.scan,
    required this.time,
  });
  final String id;
  final String date;
  final String scan;
  final String time;
  final Function() onTap;

  @override
  State<WeldingCards> createState() => _LaserCardState();
}

class _LaserCardState extends State<WeldingCards> {
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

   String formatTime(String time) {
      if (time.isEmpty || !time.contains(':')) {
        return time; // Return as is if it's not a standard time string
      }
      
      try {
        final parts = time.split(':');
        if (parts.length >= 2) {
          return '${parts[0]}:${parts[1]}';
        }
        return time;
      } catch (e) {
        return time;
      }
    }

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 239, 230),
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
          padding: const EdgeInsets.all(8),
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
                          color:  Color.fromARGB(255, 255, 152, 92),
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
                    formattedDate,
                    style: UrbanistTextStyles.bodySmall.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    formatTime(widget.time),
                    style: UrbanistTextStyles.bodySmall.copyWith(
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 3),

                  Container(
                    height: 32,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [ Color.fromARGB(255, 255, 173, 126),  Color.fromARGB(255, 255, 152, 92),],
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
