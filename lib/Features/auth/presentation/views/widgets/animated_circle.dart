import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';

class AnimatedCircle extends StatelessWidget {
  const AnimatedCircle({
    super.key,
    required this.image,
    required this.isSelected,
  });

  final String image;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? AppColors.primaryColor : Colors.black,
          width: 5,
        ),
      ),
      child: CircleAvatar(backgroundImage: AssetImage(image)),
    );
  }
}
