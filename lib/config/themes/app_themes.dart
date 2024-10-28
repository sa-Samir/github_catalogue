import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class AppThemes {
  static ThemeData get lightTheme => _lightTheme;

  static final _lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      surfaceTint: AppColors.transparent,
    ),
    scaffoldBackgroundColor: AppColors.white,
  );
}
