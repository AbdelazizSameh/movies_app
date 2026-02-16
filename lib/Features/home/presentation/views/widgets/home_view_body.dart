import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/linear_gradient_widget.dart';
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
    var height = MediaQuery.sizeOf(context).height;
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: height * 0.32,
          child: Image.asset(
            movies[currentIndex],
            key: ValueKey(movies[currentIndex]),
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: height * 0.32,
          child: const LinearGradientWidget(
            colors: [AppColors.bgColorAlpa, AppColors.bgColor],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 30,
          child: HomeViewBodyDetails(
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ],
    );
  }
}
