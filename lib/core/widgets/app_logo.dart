import 'package:flutter/material.dart';
import '../utils/assets_paths.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.width, this.height});
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(AssetsPaths.logo, height: height);
  }
}
