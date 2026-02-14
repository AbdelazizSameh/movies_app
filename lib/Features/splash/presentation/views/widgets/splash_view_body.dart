import 'package:flutter/material.dart';
import '../../../../../core/utils/assets_paths.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(AssetsPaths.logo, height: 100));
  }
}
