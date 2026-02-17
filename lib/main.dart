import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movies_app/Features/home/presentation/views/home_view.dart';
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
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: AppFonts.fontInter,
          scaffoldBackgroundColor: AppColors.bgColor,
          brightness: Brightness.dark,
        ),
        // routerConfig: AppRouter.routerConfig,
        home: HomeView(),
      ),
    );
  }
}
