import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Colors
  static const Color kRed = Color(0xFFD90429);
  static const Color kDarkRed = Color(0xFF8d0801);
  static const Color kBlack = Color(0xFF2B2D42);
  static const Color kGrey = Color(0xFF8D99AE);
  static const Color kBackgroundColor = Color(0xFFEDF2F4);

  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: kBackgroundColor,
    useMaterial3: true,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.black87,
      onPrimary: Colors.black87,
      secondary: kRed,
      onSecondary: kRed,
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
