import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    primaryColor: AppColors.blueGradientEnd,
    useMaterial3: true,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontFamily: 'Raleway'),
      bodyLarge: TextStyle(fontFamily: 'Raleway'),
      bodySmall: TextStyle(fontFamily: 'Raleway'),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.searchBarBg,
      hintStyle: const TextStyle(
        color: AppColors.fontSecondary,
        fontFamily: 'Raleway',
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
