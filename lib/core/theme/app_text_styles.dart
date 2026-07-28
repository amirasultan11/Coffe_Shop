import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static final TextStyle _base =
      GoogleFonts.sora(color: AppColors.textPrimary);

  // Headlines
  static final TextStyle headline1 =
      _base.copyWith(fontSize: 28, fontWeight: FontWeight.w700);

  static final TextStyle headline2 =
      _base.copyWith(fontSize: 22, fontWeight: FontWeight.w600);

  // Titles
  static final TextStyle titleMedium =
      _base.copyWith(fontSize: 16, fontWeight: FontWeight.w600);

  static final TextStyle titleSmall =
      _base.copyWith(fontSize: 14, fontWeight: FontWeight.w600);

  // Body
  static final TextStyle bodyMedium =
      _base.copyWith(fontSize: 14, fontWeight: FontWeight.w400);

  static final TextStyle bodySmall = _base.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  // Label
  static final TextStyle labelPrice = _base.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryBrown,
  );

  static final TextStyle labelCategory =
      _base.copyWith(fontSize: 13, fontWeight: FontWeight.w500);

  static final TextStyle labelGreeting = _base.copyWith(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );
}
