import 'package:get/get.dart';

class HomeController extends GetxController {
  final selectedCategory = 'House'.obs;
  final categories = const ['House', 'Apartment', 'Hotel', 'Villa'];

  void selectCategory(String category) {
    selectedCategory.value = category;
  }
}
