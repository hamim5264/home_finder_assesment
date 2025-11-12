import 'package:get/get.dart';

class SideMenuController extends GetxController {
  var selectedIndex = 0.obs;

  var isMenuOpen = false.obs;

  final menuItems = [
    'Home',
    'Profile',
    'Nearby',
    'Bookmark',
    'Notification',
    'Message',
    'Setting',
    'Help',
    'Logout',
  ];

  void selectMenu(int index) {
    selectedIndex.value = index;
  }

  void toggleMenu() => isMenuOpen.toggle();

  void closeMenu() => isMenuOpen.value = false;
}
