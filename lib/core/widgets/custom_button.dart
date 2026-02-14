import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.text,
    this.backgroundColor,
    this.side,
    this.foregroundColor,
  });
  final String text;
  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final BorderSide? side;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: side ?? BorderSide(color: AppColors.primaryColor, width: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: backgroundColor ?? AppColors.primaryColor,
        minimumSize: Size.fromHeight(55),
      ),
      child: Text(
        text,
        style: AppTextStyles.textStyle20Inter.copyWith(
          fontWeight: FontWeight.w600,
          color: foregroundColor ?? Colors.black,
        ),
      ),
    );
  }
}
