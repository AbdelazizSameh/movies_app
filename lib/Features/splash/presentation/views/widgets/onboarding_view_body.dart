import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_text_styles.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../models/onboarding_model.dart';
import 'explore_now_widget.dart';
import 'onboarding_details.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<OnboardingModel> _onBoardingList = const [
    OnboardingModel(
      image: AppAssets.postersGroup,
      title: "Find Your Next Favorite Movie Here",
      subtitle:
          "Get access to a huge library of movies to suit all tastes. You will surely like it.",
      buttonText: "Explore Now",
      colors: [
        Colors.transparent,
        Color.fromARGB(183, 26, 26, 26),
        Color.fromARGB(255, 0, 0, 0),
      ],
    ),
    OnboardingModel(
      image: AppAssets.avengers,
      title: "Discover Movies",
      subtitle:
          "Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease.",
      buttonText: "next",
      colors: [Colors.transparent, Color(0xff084250)],
    ),
    OnboardingModel(
      image: AppAssets.theGodfather,
      title: "Explore All Genres",
      subtitle:
          "Discover movies from every genre, in all available qualities. Find something new and exciting to watch every day.",
      buttonText: "next",
      colors: [Colors.transparent, Color(0xff85210E)],
    ),
    OnboardingModel(
      image: AppAssets.badBoys,
      title: "Create Watchlists",
      subtitle:
          "Save movies to your watchlist to keep track of what you want to watch next. Enjoy films in various qualities and genres.",
      buttonText: "buttonText",
      colors: [Colors.transparent, Color(0xff4C2471)],
    ),
    OnboardingModel(
      image: AppAssets.doctorStrange,
      title: "Rate, Review, and Learn",
      subtitle:
          "Share your thoughts on the movies you've watched. Dive deep into film details and help others discover great movies with your reviews.",
      buttonText: "buttonText",
      colors: [Colors.transparent, Color(0xff601321)],
    ),
    OnboardingModel(
      image: AppAssets.samMendes,
      title: "Start Watching Now",
      subtitle: "",
      buttonText: "buttonText",
      colors: [Colors.transparent, Color(0xff2A2C30)],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: _onBoardingList.length,
      itemBuilder: (context, index) => index == 0
          ? ExploreNowWidget(model: _onBoardingList[index])
          : OnboardingDetails(model: _onBoardingList[index]),
    );
  }
}
