import 'package:flutter/material.dart';
import 'app_fonts.dart';

abstract class AppTextStyles {
  static final TextStyle _base = TextStyle(fontSize: 20, color: Colors.white);

  //inter fontFamily
  static final textStyle36Inter = _base.copyWith(
    fontSize: 34,
    fontWeight: FontWeight.w500,
  );
  static final textStyle24Inter = _base.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static final textStyle20Inter = _base.copyWith(fontSize: 18);

  //roboto fontFamily
  static final textStyle24Roboto = _base.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: AppFonts.fontRoboto,
  );
}
