import 'package:flutter/material.dart';

class CustomeAnimatedFadeImage extends StatelessWidget {
  const CustomeAnimatedFadeImage({
    super.key,
    required this.movies,
    required this.currentIndex,
  });

  final List<String> movies;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    var width = screenSize.width;
    return AnimatedSwitcher(
      transitionBuilder: (child, animation) =>
          FadeTransition(opacity: animation, child: child),
      duration: const Duration(milliseconds: 300),
      switchInCurve: Curves.easeIn,
      child: Image.asset(
        movies[currentIndex],
        key: ValueKey(movies[currentIndex]),
        fit: BoxFit.fill,
        width: width,
      ),
    );
  }
}
