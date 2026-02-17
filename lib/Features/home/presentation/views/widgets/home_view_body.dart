import 'package:flutter/material.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/linear_gradient_widget.dart';
import 'bottom_navigation_bar_section.dart';
import 'custom_animated_fade_image.dart';
import 'home_view_body_details.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int currentIndex = 0;

  final List<String> movies = [
    AppAssets.doctorStrange,
    AppAssets.badBoys,
    AppAssets.avengers,
    AppAssets.postersGroup,
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    var height = screenSize.height;
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: height * 0.3,
          child: CustomeAnimatedFadeImage(
            movies: movies,
            currentIndex: currentIndex,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: height * 0.3,
          child: const LinearGradientWidget(
            colors: [AppColors.bgColorAlpa, AppColors.bgColor],
          ),
        ),
        Positioned.fill(
          child: HomeViewBodyDetails(
            onPageChanged: (index) => setState(() => currentIndex = index),
            list: movies,
          ),
        ),

        Positioned(
          left: 0,
          right: 0,
          bottom: 10,
          child: const BottomNavigationBarSection(),
        ),
      ],
    );
  }
}
