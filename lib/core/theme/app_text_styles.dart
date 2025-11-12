import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const heading = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: AppColors.fontPrimary,
  );

  static const subHeading = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: AppColors.fontSecondary,
  );

  static const body = TextStyle(
    fontFamily: 'Raleway',
    fontSize: 14,
    color: AppColors.fontSecondary,
  );

  static const small = TextStyle(
    fontFamily: 'Raleway',
    fontSize: 12,
    color: AppColors.fontSecondary,
  );
}
