import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/side_menu_controller.dart';
import '../widgets/menu_tile.dart';

class MenuScreen extends GetView<SideMenuController> {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final c = controller;

    final icons = [
      Icons.home,
      Icons.person_outline,
      Icons.location_on_outlined,
      Icons.bookmark_outline,
      Icons.notifications_none,
      Icons.mark_chat_unread_outlined,
      Icons.settings_outlined,
      Icons.help_outline,
      Icons.power_settings_new_outlined,
    ];

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: c.menuItems.length,
                itemBuilder: (context, index) {
                  final bool dividerNeeded = (index + 1) % 3 == 0;

                  return Column(
                    children: [
                      Obx(() => MenuTile(
                            icon: icons[index],
                            label: c.menuItems[index],
                            selected: c.selectedIndex.value == index,
                            onTap: () => c.selectMenu(index),
                          )),
                      if (dividerNeeded)
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 40, top: 8, bottom: 8),
                          child: Divider(
                            color: Colors.white.withValues(alpha: 0.25),
                            thickness: 1,
                            height: 1,
                          ),
                        ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
