import 'package:flutter/material.dart';

import '../utils/app_assets.dart';
import '../utils/app_colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var listIcons = [
      AppAssets.home,
      AppAssets.search,
      AppAssets.explore,
      AppAssets.profile,
    ];
    return Container(
      height: 61,
      width: MediaQuery.sizeOf(context).width * 0.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.secondaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [for (String icon in listIcons) Image.asset(icon)],
        ),
      ),
    );
  }
}
