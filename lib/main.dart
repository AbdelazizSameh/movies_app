import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movies_app/core/utils/app_router.dart';
import 'core/utils/app_colors.dart';
import 'core/utils/app_fonts.dart';

void main() {
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.routerConfig,
      theme: ThemeData(
        fontFamily: AppFonts.fontInter,
        scaffoldBackgroundColor: AppColors.bgColor,
        brightness: Brightness.dark,
      ),
    );
  }
}
