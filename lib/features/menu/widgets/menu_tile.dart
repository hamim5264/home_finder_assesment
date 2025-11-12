import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

class MenuTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const MenuTile({
    super.key,
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: SizedBox(
        height: 48,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            if (selected)
              Positioned(
                left: 0,
                right: MediaQuery.of(context).size.width * 0.40,
                top: 0,
                bottom: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
            Row(
              children: [
                const SizedBox(width: 20),
                Icon(
                  icon,
                  color: selected ? AppColors.menuBackground : Colors.white,
                  size: 22,
                ),
                const SizedBox(width: 16),
                Text(
                  label,
                  style: AppTextStyles.body.copyWith(
                    color: selected ? AppColors.menuBackground : Colors.white,
                    fontWeight: selected ? FontWeight.w500 : FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
