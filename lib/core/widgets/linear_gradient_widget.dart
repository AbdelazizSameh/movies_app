import 'package:flutter/material.dart';

class LinearGradientWidget extends StatelessWidget {
  const LinearGradientWidget({super.key, required this.colors});
  final List<Color> colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentGeometry.topCenter,
          end: AlignmentGeometry.bottomCenter,
          colors: colors,
        ),
      ),
    );
  }
}
