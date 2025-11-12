import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBack;
  final VoidCallback? onMenuTap;

  const CommonAppBar({
    super.key,
    required this.title,
    this.showBack = false,
    this.onMenuTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: showBack
          ? IconButton(
        icon: const Icon(CupertinoIcons.back, color: AppColors.iconGrey),
        onPressed: () => Navigator.pop(context),
      )
          : IconButton(
        icon: const Icon(CupertinoIcons.bars, color: AppColors.iconGrey),
        onPressed: onMenuTap,
      ),
      title: Text(
        title,
        style: AppTextStyles.subHeading.copyWith(
          fontWeight: FontWeight.bold,
          color: AppColors.iconGrey,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
