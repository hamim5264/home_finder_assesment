import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/theme/app_theme.dart';
import 'features/menu/bindings/menu_binding.dart';
import 'features/menu/screens/menu_wrapper.dart';

void main() {
  runApp(const HomeFinderAssessmentApp());
}

class HomeFinderAssessmentApp extends StatelessWidget {
  const HomeFinderAssessmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Finder Assessment',
      theme: AppTheme.lightTheme,
      initialBinding: MenuBinding(),
      home: const MenuWrapper(),
    );
  }
}
