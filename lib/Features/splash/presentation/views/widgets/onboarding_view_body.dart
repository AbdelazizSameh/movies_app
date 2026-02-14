import 'package:flutter/material.dart';
import '../../../../../core/utils/app_fonts.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text(
        "hello",
        style: TextStyle(
          fontFamily: AppFonts.fontInter,
          color: Colors.white,
          fontSize: 40,
        ),
      ),
    );
  }
}
