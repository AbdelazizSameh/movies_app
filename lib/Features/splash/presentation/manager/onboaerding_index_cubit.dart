import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_assets.dart';
import '../models/onboarding_model.dart';

class OnboardingIndexCubit extends Cubit<int> {
  OnboardingIndexCubit() : super(0) {
    pageController = PageController();
  }

  late final PageController pageController;

  final List<OnboardingModel> _onBoardingList = const [
    OnboardingModel(
      image: AppAssets.postersGroup,
      title: "Find Your Next Favorite Movie Here",
      subtitle:
          "Get access to a huge library of movies to suit all tastes. You will surely like it.",
      buttonText: "Explore Now",
      colors: [Colors.transparent, Color(0xB71A1A1A), Color(0xFF000000)],
    ),
    OnboardingModel(
      image: AppAssets.avengers,
      title: "Discover Movies",
      subtitle:
          "Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease.",
      buttonText: "Next",
      colors: [Colors.transparent, Color(0xff084250)],
    ),
    OnboardingModel(
      image: AppAssets.theGodfather,
      title: "Explore All Genres",
      subtitle:
          "Discover movies from every genre, in all available qualities. Find something new and exciting to watch every day.",
      buttonText: "Next",
      colors: [Colors.transparent, Color(0xff85210E)],
    ),
    OnboardingModel(
      image: AppAssets.badBoys,
      title: "Create Watchlists",
      subtitle:
          "Save movies to your watchlist to keep track of what you want to watch next. Enjoy films in various qualities and genres.",
      buttonText: "Next",
      colors: [Colors.transparent, Color(0xff4C2471)],
    ),
    OnboardingModel(
      image: AppAssets.doctorStrange,
      title: "Rate, Review, and Learn",
      subtitle:
          "Share your thoughts on the movies you've watched. Dive deep into film details and help others discover great movies with your reviews.",
      buttonText: "Next",
      colors: [Colors.transparent, Color(0xff601321)],
    ),
    OnboardingModel(
      image: AppAssets.samMendes,
      title: "Start Watching Now",
      subtitle: "",
      buttonText: "Finish",
      colors: [Colors.transparent, Color(0xff2A2C30)],
    ),
  ];

  void next() {
    if (state < _onBoardingList.length - 1) {
      emit(state + 1);
      pageController.nextPage(
        duration: const Duration(milliseconds: 200),
        curve: Curves.bounceInOut,
      );
    }
  }

  void back() {
    if (state > 0) {
      emit(state - 1);
      pageController.previousPage(
        duration: const Duration(milliseconds: 200),
        curve: Curves.bounceInOut,
      );
    }
  }

  void onPageChanged(int index) {
    emit(index);
  }

  int get listLength => _onBoardingList.length;
  bool get isLastPage => _onBoardingList.length - 1 == state;
  bool get notFirstPage => state > 1;
  int get currentIndex => state;

  List<OnboardingModel> get getList => _onBoardingList;

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
