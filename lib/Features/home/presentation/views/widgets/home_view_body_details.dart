import 'package:flutter/material.dart';
import '../../../../../core/utils/app_assets.dart';
import 'custom_carousal_slider.dart';
import 'title_section.dart';

class HomeViewBodyDetails extends StatelessWidget {
  const HomeViewBodyDetails({super.key, required this.onPageChanged, required this.list});

  final Function(int) onPageChanged;
final List<String>list;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppAssets.availableNow),
        CustomeCarousalSlider(onPageChanged: onPageChanged, list:list ),
        Image.asset(AppAssets.watchNow),
        const TitleSection(text: "Action"),
      ],
    );
  }
}
