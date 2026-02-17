import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import '../../../../../Features/home/presentation/views/widgets/movie_item.dart';
import '../../../../../core/utils/app_assets.dart';
import 'custom_carousal_slider.dart';
import 'title_section.dart';

class HomeViewBodyDetails extends StatelessWidget {
  const HomeViewBodyDetails({
    super.key,
    required this.onPageChanged,
    required this.list,
  });

  final Function(int) onPageChanged;
  final List<String> list;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).padding.bottom;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Image.asset(AppAssets.availableNow),
          CustomeCarousalSlider(onPageChanged: onPageChanged, list: list),
          Image.asset(AppAssets.watchNow),
          const TitleSection(text: "Action"),
          CustomListViewBuilder(list: list),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({super.key, required this.list});
  final List<String> list;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) => AspectRatio(
          aspectRatio: 16 / 22,
          child: MovieItem(image: list[index]),
        ),
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 16),
      ),
    );
  }
}
