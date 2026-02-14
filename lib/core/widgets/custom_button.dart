import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.text});
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: AppColors.primaryColor,
        minimumSize: Size.fromHeight(55),
      ),
      child: Text(
        text,
        style: AppTextStyles.textStyle20Inter.copyWith(
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
    );
  }
}
