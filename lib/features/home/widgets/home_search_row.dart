import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/theme/app_colors.dart';
import '../../menu/controllers/side_menu_controller.dart';

class HomeSearchRow extends StatelessWidget {
  const HomeSearchRow({super.key});

  @override
  Widget build(BuildContext context) {
    final menuController = Get.find<SideMenuController>();

    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 48,
            child: TextField(
              cursorColor: AppColors.blueGradientEnd,
              decoration: InputDecoration(
                hintText: "Search address, or near you",
                hintStyle: const TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 12,
                  color: AppColors.fontSecondary,
                ),
                prefixIcon: const Icon(Icons.search,
                    color: AppColors.iconGrey, size: 20),
                filled: true,
                fillColor: AppColors.searchBarBg,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),

        // 🎯 Menu Trigger Button (Filter icon)
        GestureDetector(
          onTap: menuController.toggleMenu,
          child: Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                colors: [AppColors.blueGradientStart, AppColors.blueGradientEnd],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const Icon(Icons.tune, color: Colors.white, size: 20),
          ),
        ),
      ],
    );
  }
}
