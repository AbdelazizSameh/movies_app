import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/Features/splash/presentation/manager/onboaerding_index_cubit.dart';
import 'explore_now_widget.dart';
import 'onboarding_details.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingIndexCubit, int>(
      builder: (context, state) {
        var cubit = context.read<OnboardingIndexCubit>();
        return PageView.builder(
          controller: cubit.pageController,
          itemCount: cubit.listLength,
          onPageChanged: (value) => cubit.onPageChanged(value),
          itemBuilder: (context, index) => index == 0
              ? ExploreNowWidget(model: cubit.getList[index])
              : OnboardingDetails(model: cubit.getList[index]),
        );
      },
    );
  }
}
