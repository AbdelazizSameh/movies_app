import 'package:flutter/material.dart';
import '../../models/onboarding_model.dart';

class OnboardingDetails extends StatelessWidget {
  const OnboardingDetails({super.key, required this.model});
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
      ],
    );
  }
}
