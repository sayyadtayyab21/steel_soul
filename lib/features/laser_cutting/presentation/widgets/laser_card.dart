import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:steel_soul/styles/urbanist_text_styles.dart';

class LaserCard extends StatefulWidget {
  const LaserCard({
    super.key,
    required this.id,
    required this.date,
    required this.onTap,
    required this.scan, required this.time,
  });
  final String id;
  final String date;
  final String scan;
  final String time;
  final Function() onTap;

  @override
  State<LaserCard> createState() => _LaserCardState();
}

class _LaserCardState extends State<LaserCard> {
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


        String formattedTime = '';
try {
  // If your time comes as "11:32:26", DateFormat.jm() converts it to "11:32 AM"
  // Note: We use a dummy date because DateTime.parse needs a full date-time string
  DateTime parsedTime = DateTime.parse('2025-01-01 ${widget.time}');
  formattedTime = DateFormat.jm().format(parsedTime); 
} catch (e) {
  // Fallback if the string is already formatted or in an unusual format
  formattedTime = widget.time; 
}

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFE6F3FF),
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
                          color: Color.fromARGB(255, 80, 193, 231),
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
                
                  Text(
                formattedTime,
                    style: UrbanistTextStyles.bodySmall.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 3,),
       
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
