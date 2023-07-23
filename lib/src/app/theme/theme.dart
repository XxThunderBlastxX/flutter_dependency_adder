import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFEDF2F4),
    useMaterial3: true,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.black87,
      onPrimary: Colors.black87,
      secondary: Color(0xFFD90429),
      onSecondary: Color(0xFFD90429),
      error: Colors.red,
      onError: Colors.red,
      background: Color(0xFFEDF2F4),
      onBackground: Color(0xFFEDF2F4),
      surface: Color(0xFFEDF2F4),
      onSurface: Color(0xFFEDF2F4),
    ),
    textTheme: TextTheme(
      labelLarge: GoogleFonts.robotoMono(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
      labelMedium: GoogleFonts.robotoMono(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
      labelSmall: GoogleFonts.robotoMono(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    ),
  );
}
