import 'package:flutter/material.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Text(text, style: AppTextStyles.textStyle20Inter),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              "See More",
              style: AppTextStyles.textStyle20Inter.copyWith(
                color: AppColors.primaryColor,
                fontSize: 16,
              ),
            ),
          ),
          Image.asset(AppAssets.arrow),
        ],
      ),
    );
  }
}
