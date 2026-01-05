import 'package:flutter/material.dart';

class SummaryBox extends StatelessWidget {
  const SummaryBox({
    super.key,
    required this.label,
    required this.value,
    required this.colors,
    required this.borderColor,
  });

  final String label;
  final String value;
  final List<Color> colors;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
       gradient: LinearGradient(
        colors: colors,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(8),
    border: Border.all(
      color: borderColor,
    ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style:const TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      
    );
    
  }
}
