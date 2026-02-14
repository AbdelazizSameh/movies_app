import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/utils/app_routes.dart';
import '../../../../../core/widgets/app_logo.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    navigateAfterDelay();
    super.initState();
  }

  Future navigateAfterDelay() {
    return Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      context.pushReplacement(AppRoutes.onBoardingPath);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Center(child: AppLogo(height: 100));
  }
}
