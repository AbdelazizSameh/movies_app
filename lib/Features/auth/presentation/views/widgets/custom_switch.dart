import 'package:flutter/material.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import 'animated_circle.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isUsaSelected = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor, width: 3),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 20,
        children: [
          GestureDetector(
            onTap: () => setState(() => isUsaSelected = true),
            child: AnimatedCircle(
              image: AppAssets.usaFlag,
              isSelected: isUsaSelected,
            ),
          ),
          GestureDetector(
            onTap: () => setState(() => isUsaSelected = false),
            child: AnimatedCircle(
              image: AppAssets.egyFlag,
              isSelected: !isUsaSelected,
            ),
          ),
        ],
      ),
    );
  }
}
