import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
  });
  final String? hintText;
  final String? labelText;
  final String? prefixIcon;
  final String? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      decoration: customInputDecoration(),
    );
  }

  InputDecoration customInputDecoration() {
    return InputDecoration(
      prefixIcon: prefixIcon == null
          ? null
          : Image.asset(prefixIcon!, width: 26, height: 30),
      suffixIcon: suffixIcon == null
          ? null
          : Image.asset(suffixIcon!, width: 16, color: Colors.white),
      hintText: hintText,
      hintStyle: AppTextStyles.textStyle16Roboto.copyWith(color: Colors.grey),
      labelText: labelText,
      labelStyle: AppTextStyles.textStyle16Roboto.copyWith(fontSize: 19),
      focusColor: Colors.white,
      fillColor: AppColors.secondaryColor,
      filled: true,
      enabledBorder: customOutlineInputBoder(),
      focusedBorder: customOutlineInputBoder(),
    );
  }

  OutlineInputBorder customOutlineInputBoder() => OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: AppColors.secondaryColor),
  );
}
