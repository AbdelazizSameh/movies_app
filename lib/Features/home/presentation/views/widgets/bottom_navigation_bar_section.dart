import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_bottom_nav_bar.dart';

class BottomNavigationBarSection extends StatelessWidget {
  const BottomNavigationBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomCenter,
      child: CustomBottomNavBar(),
    );
  }
}
