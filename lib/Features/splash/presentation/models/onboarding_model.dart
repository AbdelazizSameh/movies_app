import 'package:flutter/material.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String subtitle;
  final String buttonText;
  final List<Color> colors;

  const OnboardingModel({
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.image,
    required this.colors,
  });
}
