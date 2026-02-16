import 'package:flutter/material.dart';
import 'rating_widget.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(20),
          child: Image.asset(image, fit: BoxFit.fill),
        ),
        const Positioned(top: 10, left: 6, child: RatingWidget()),
      ],
    );
  }
}
