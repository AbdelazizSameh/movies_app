import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/utils/app_routes.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../manager/onboaerding_index_cubit.dart';
import '../../models/onboarding_model.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({super.key, required this.model});

  final OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<OnboardingIndexCubit>();
    return Container(
      decoration: BoxDecoration(
        color: AppColors.bgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36),
          topRight: Radius.circular(36),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 27),
            Text(
              model.title,
              textAlign: TextAlign.center,
              style: AppTextStyles.textStyle24Inter,
            ),
            const SizedBox(height: 16),
            if (model.subtitle.isNotEmpty)
              Text(
                model.subtitle,
                textAlign: TextAlign.center,
                style: AppTextStyles.textStyle20Inter.copyWith(
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffFFFFFF),
                ),
              ),
            const SizedBox(height: 24),
            CustomButton(
              text: model.buttonText,
              onPressed: () => cubit.isLastPage
                  ? GoRouter.of(context).pushReplacement(AppRoutes.loginPath)
                  : cubit.next(),
            ),
            if (cubit.notFirstPage) ...[
              const SizedBox(height: 16),
              CustomButton(
                text: 'back',
                onPressed: () => cubit.back(),
                backgroundColor: AppColors.bgColor,
                foregroundColor: AppColors.primaryColor,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
