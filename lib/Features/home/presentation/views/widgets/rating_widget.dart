import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(10),
      child: ColoredBox(
        color: Colors.transparent.withValues(alpha: 0.6),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 6),
          child: Row(
            spacing: 5,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '7.7',
                style: AppTextStyles.textStyle16Roboto.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.star, size: 18, color: AppColors.primaryColor),
            ],
          ),
        ),
      ),
    );
  }
}
