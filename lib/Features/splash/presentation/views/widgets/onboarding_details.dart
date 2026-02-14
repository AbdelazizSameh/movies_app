import 'package:flutter/material.dart';
import '../../../../../core/widgets/linear_gradient_widget.dart';
import '../../models/onboarding_model.dart';
import 'onboarding_content.dart';

class OnboardingDetails extends StatelessWidget {
  const OnboardingDetails({super.key, required this.model});
  final OnboardingModel model;
  @override
  Widget build(BuildContext context) {
    var imgHeight = MediaQuery.sizeOf(context).height;
    return Stack(
      children: [
        Positioned.fill(
          bottom: imgHeight * .2,
          child: Image.asset(model.image, fit: BoxFit.fill),
        ),
        Positioned.fill(
          bottom: imgHeight * .21,
          child: LinearGradientWidget(colors: model.colors),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: OnboardingContent(model: model),
        ),
      ],
    );
  }
}
