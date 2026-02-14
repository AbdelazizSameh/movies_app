import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../models/onboarding_model.dart';


class ExploreNowWidget extends StatelessWidget {
  const ExploreNowWidget({super.key, required this.model});
  final OnboardingModel model;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Image.asset(model.image, fit: BoxFit.cover)),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentGeometry.topCenter,
              end: AlignmentGeometry.bottomCenter,
              colors: model.colors,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 30,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 33),
            child: Column(
              children: [
                Text(
                  model.title,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.textStyle36Inter.copyWith(height: 1.1),
                ),
                const SizedBox(height: 16),
                Text(
                  model.subtitle,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.textStyle20Inter.copyWith(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffFFFFFF).withValues(alpha: .6),
                  ),
                ),
                const SizedBox(height: 24),
                CustomButton(text: model.buttonText, onPressed: () {}),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
