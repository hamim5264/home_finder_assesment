import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../controllers/home_controller.dart';
import '../widgets/home_header.dart';
import '../widgets/home_search_row.dart';
import '../widgets/property_filter_tab.dart';
import '../widgets/near_from_you_card.dart';
import '../widgets/best_for_you_card.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const HomeHeader(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeSearchRow(),
            const SizedBox(height: 18),
            SizedBox(
              height: 34,
              child: Obx(() {
                final selected = controller.selectedCategory.value;
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.categories.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 12),
                  itemBuilder: (_, i) {
                    final category = controller.categories[i];
                    return PropertyFilterTab(
                      label: category,
                      isSelected: selected == category,
                      onTap: () => controller.selectCategory(category),
                    );
                  },
                );
              }),
            ),
            const SizedBox(height: 24),
            _sectionTitle('Near from you'),
            const SizedBox(height: 14),
            SizedBox(
              height: 272,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: _nearbyImages.length,
                separatorBuilder: (_, __) => const SizedBox(width: 16),
                itemBuilder: (_, i) => NearFromYouCard(
                  width: 222,
                  height: 272,
                  imageUrl: _nearbyImages[i],
                  distanceText: _distance[i],
                  title: _nearbyTitles[i],
                  subtitle: 'JL Sultan Iskandar Muda',
                ),
              ),
            ),
            const SizedBox(height: 24),
            _sectionTitle('Best for you'),
            const SizedBox(height: 14),
            Column(
              children: List.generate(
                _bestImages.length,
                (i) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: BestForYouCard(
                    width: 305,
                    height: 74,
                    imageUrl: _bestImages[i],
                    title: _bestTitles[i],
                    price: _prices[i],
                    beds: _beds[i],
                    baths: _baths[i],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row _sectionTitle(String title) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyles.subHeading.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'See more',
            style: AppTextStyles.small.copyWith(color: AppColors.fontSecondary),
          ),
        ],
      );
}

final _nearbyImages = [
  "https://plus.unsplash.com/premium_photo-1661883982941-50af7720a6ff?...",
  "https://plus.unsplash.com/premium_photo-1661883964999-c1bcb57a7357?...",
  "https://plus.unsplash.com/premium_photo-1661906314543-dd6b588f3556?...",
];
final _nearbyTitles = [
  "Dreamsville House",
  "Orchard House",
  "The Hollies House"
];
final _distance = ["1.8 km", "2.1 km", "2.7 km"];

final _bestImages = [
  "https://images.unsplash.com/photo-1650211803854-e7b2e0ce86f9?...",
  "https://images.unsplash.com/photo-1722020287826-130aac89df7b?...",
  "https://images.unsplash.com/photo-1598529186127-b754dd3ef99c?...",
];
final _bestTitles = ["Ascot House", "Sky Dandelions", "Sunshine Villa"];
final _prices = [
  'Rp. 2.500.000.000 / Year',
  'Rp. 2.000.000.000 / Year',
  'Rp. 1.800.000.000 / Year'
];
final _beds = [6, 5, 4];
final _baths = [4, 2, 2];
