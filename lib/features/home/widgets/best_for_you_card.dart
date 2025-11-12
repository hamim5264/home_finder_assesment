import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

class BestForYouCard extends StatelessWidget {
  final double width;
  final double height;
  final String imageUrl;
  final String title;
  final String price;
  final int beds;
  final int baths;

  const BestForYouCard({
    super.key,
    required this.width,
    required this.height,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.beds,
    required this.baths,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .05),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            SizedBox(
              width: 74,
              height: height,
              child: Image.network(imageUrl, fit: BoxFit.cover),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.body.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      price,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.small.copyWith(
                        color: AppColors.blueGradientEnd,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.airline_seat_individual_suite,
                            size: 14, color: AppColors.iconGrey),
                        const SizedBox(width: 4),
                        Text(
                          '$beds Bedroom',
                          style: AppTextStyles.small.copyWith(fontSize: 11),
                        ),
                        const SizedBox(width: 12),
                        const Icon(Icons.bathtub,
                            size: 14, color: AppColors.iconGrey),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            '$baths Bathroom',
                            style: AppTextStyles.small.copyWith(fontSize: 11),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
