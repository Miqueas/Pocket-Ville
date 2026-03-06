import 'package:flutter/material.dart';
import 'package:pocket_ville/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:pocket_ville/features/root/presentation/screens/root_screen.dart';
import 'package:pocket_ville/features/splash/presentation/screens/splash_screen.dart';

abstract final class AppRouter {
  static const home = '/';
  static const splash = '/splash';
  static const onboarding = '/onboarding';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) =>
    MaterialPageRoute(
      settings: settings,
      builder: (_) => switch (settings.name) {
        onboarding => const OnboardingScreen(),
        splash => const SplashScreen(),
        _ => const RootScreen(),
      },
    );
}