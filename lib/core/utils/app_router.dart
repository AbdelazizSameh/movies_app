import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/Features/auth/presentation/views/login_view.dart';
import 'package:movies_app/Features/splash/presentation/manager/onboaerding_index_cubit.dart';
import 'package:movies_app/Features/splash/presentation/views/onboarding_view.dart';
import 'package:movies_app/Features/splash/presentation/views/splash_view.dart';
import 'package:movies_app/core/utils/app_routes.dart';

abstract class AppRouter {
  static GoRouter routerConfig = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.splashPath,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRoutes.onBoardingPath,
        builder: (context, state) => BlocProvider(
          create: (context) => OnboardingIndexCubit(),
          child: const OnboardingView(),
        ),
      ),
      GoRoute(
        path: AppRoutes.loginPath,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: AppRoutes.loginPath,
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}
