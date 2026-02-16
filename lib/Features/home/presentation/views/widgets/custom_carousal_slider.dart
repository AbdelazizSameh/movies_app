import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_assets.dart';
import 'movie_item.dart';

class CustomeCarousalSlider extends StatelessWidget {
  const CustomeCarousalSlider({super.key, required this.onPageChanged});
  final Function(int) onPageChanged;

  static var list = [
    AppAssets.doctorStrange,
    AppAssets.badBoys,
    AppAssets.avengers,
    AppAssets.postersGroup,
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: list.length,
      itemBuilder: (context, index, realIndex) {
        return MovieItem(image: list[index]);
      },
      options: customCarousalOptions(),
    );
  }

  CarouselOptions customCarousalOptions() {
    return CarouselOptions(
      autoPlay: true,
      height: 340,
      viewportFraction: 0.54,
      enlargeCenterPage: true,
      onPageChanged: (index, reason) => onPageChanged(index),
    );
  }
}
