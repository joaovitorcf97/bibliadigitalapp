import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const MaterialColor orange = MaterialColor(
    _orangePrimary,
    <int, Color>{
      50: Color(0xFFFFF3E0),
      100: Color(0xFFFFE0B2),
      200: Color(0xFFFFCC80),
      300: Color(0xFFFFB74D),
      400: Color(0xFFFFA726),
      500: Color(_orangePrimary),
      600: Color(0xFFFB8C00),
      700: Color(0xFFF57C00),
      800: Color(0xFFEF6C00),
      900: Color(0xFFE65100),
    },
  );
  static const Color orangeBackground = Color(0xFFFFF9F2);
  static const Color orange100 = Color(0xFFFFDAC8);
  static const Color black = Color(0xFF2C2D2F);
  static const Color grey = Color(0xFF5A5A5A);

  static const int _orangePrimary = 0xFFFE9065;

  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: orangeBackground,
    primarySwatch: orange,
    textTheme: GoogleFonts.poppinsTextTheme(
      ThemeData.light().textTheme,
    ),
  );
}
