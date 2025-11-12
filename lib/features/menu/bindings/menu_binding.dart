import 'package:get/get.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/side_menu_controller.dart';

class MenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SideMenuController());
    Get.lazyPut(() => HomeController());
  }
}
