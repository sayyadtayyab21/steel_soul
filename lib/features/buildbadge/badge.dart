import 'package:flutter/material.dart';

// ignore: unused_element
class BuildBadge extends StatelessWidget {
  const   BuildBadge({super.key, required this.label, required this.bgColor, required this.borderColor, required this.textColor});

  final String label;
    final Color bgColor;
    final Color borderColor;
    final Color textColor;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: borderColor),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 11,
          color: textColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  
  }
}