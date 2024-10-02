import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/colors.dart';

class AppTextTheme {
  static TextStyle titleSmall({Color? color}) {
    return GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      color: color ?? teritaryColor,
    );
  }

  static TextStyle bodySmall({Color? color}) {
    return GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      color: color ?? teritaryColor,
    );
  }

  static TextStyle bodyMedium({Color? color}) {
    return GoogleFonts.poppins(
      fontSize: 26,
      fontWeight: FontWeight.w700,
      color: color ?? teritaryColor,
    );
  }

  static TextStyle bodyLarge({Color? color, double? size}) {
    return GoogleFonts.poppins(
      fontSize: size ?? 70,
      fontWeight: FontWeight.w700,
      color: color ?? teritaryColor,
    );
  }
}
