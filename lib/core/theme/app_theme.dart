import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';
class AppTheme {
  AppTheme._();

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.scaffoldBackground,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primaryBrown,
        secondary: AppColors.primaryBrownLight,
        surface: AppColors.cardBackground,
      ),
      textTheme: GoogleFonts.soraTextTheme(ThemeData.dark().textTheme),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.scaffoldBackground,
        elevation: 0,
      ),
      cardColor: AppColors.cardBackground,
      iconTheme: const IconThemeData(color: AppColors.iconDefault),
    );
  }
}
