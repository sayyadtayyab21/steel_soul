import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UrbanistTextStyles {
  // Using Google Fonts package (recommended approach)
  static TextStyle get heading1 => GoogleFonts.urbanist(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      );

  static TextStyle get heading2 => GoogleFonts.urbanist(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      );

  static TextStyle get heading3 => GoogleFonts.urbanist(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      );

  static TextStyle get bodyLarge => GoogleFonts.urbanist(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      );

  static TextStyle get bodyMedium => GoogleFonts.urbanist(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      );

  static TextStyle get bodySmall => GoogleFonts.urbanist(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.grey,
      );

  static TextStyle get button => GoogleFonts.urbanist(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );

  static TextStyle get caption => GoogleFonts.urbanist(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: Colors.grey,
      );

  // Alternative approach using local font files
  static TextStyle get heading1Local => const TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      );

  static TextStyle get heading2Local => const TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      );

  static TextStyle get bodyLargeLocal => const TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      );

  static TextStyle get buttonLocal => const TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );
}
