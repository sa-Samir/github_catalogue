import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_constants.dart';

class AppThemes {
  static ThemeData get lightTheme => _lightTheme;

  static final _lightTheme = ThemeData(
    colorScheme: const ColorScheme.light().copyWith(
      secondary: AppColors.secondary,
      surfaceTint: AppColors.transparent,
    ),
    scaffoldBackgroundColor: AppColors.white,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.inputBgGrey,
      border: const UnderlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppConstants.borderRadius,
          ),
        ),
      ),
    ),
  );
}
