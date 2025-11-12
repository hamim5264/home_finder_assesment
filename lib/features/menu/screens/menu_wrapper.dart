import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/theme/app_colors.dart';
import '../../home/screens/home_screen.dart';
import '../controllers/side_menu_controller.dart';
import '../screens/menu_screen.dart';

class MenuWrapper extends GetView<SideMenuController> {
  const MenuWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.menuBackground,
      body: Obx(() {
        final isOpen = controller.isMenuOpen.value;

        return Stack(
          children: [
            const MenuScreen(),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              left: isOpen ? screenWidth * 0.60 : 0,
              right: isOpen ? -screenWidth * 0.60 : 0,
              top: isOpen ? 40 : 0,
              bottom: isOpen ? 40 : 0,
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onHorizontalDragUpdate: (details) {
                  if (details.delta.dx < -10 && isOpen) controller.closeMenu();
                },
                onTap: () {
                  if (isOpen) controller.closeMenu();
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: isOpen
                        ? const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          )
                        : BorderRadius.zero,
                    boxShadow: isOpen
                        ? [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.25),
                              blurRadius: 25,
                              offset: const Offset(-5, 8),
                            ),
                          ]
                        : [],
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Transform.scale(
                    scale: isOpen ? 0.96 : 1.0,
                    child: const HomeScreen(),
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
