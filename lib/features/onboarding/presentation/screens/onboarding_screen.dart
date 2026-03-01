import 'package:flutter/material.dart';
import 'package:pocket_ville/core/presentation/screens/base_screen.dart';
import 'package:pocket_ville/core/presentation/widgets/primary_button.dart';
import 'package:pocket_ville/features/onboarding/presentation/widgets/onboarding_animated_button_text.dart';
import 'package:pocket_ville/features/onboarding/presentation/widgets/onboarding_page_01.dart';
import 'package:pocket_ville/features/onboarding/presentation/widgets/onboarding_page_02.dart';
import 'package:pocket_ville/features/onboarding/presentation/widgets/onboarding_page_indicators.dart';

final class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

final class _OnboardingScreenState extends State<OnboardingScreen> {
  final _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BaseScreen(child: Column(
    spacing: 16,
    children: [
      Expanded(child: PageView(
        controller: _controller,
        children: const [
          OnboardingPage01(),
          OnboardingPage02(),
        ],
      ),),
      OnboardingPageIndicators(controller: _controller,),
      PrimaryButton(
        width: .infinity,
        onPressed: () {
          if (!_controller.hasClients) return;
          if (_controller.page == null) return;

          if (_controller.page! < .5) {
            _controller.nextPage(
              curve: Curves.easeInOut,
              duration: const Duration(milliseconds: 150),
            );
          }

          if (_controller.page! > .5) {
            Navigator.of(context).pushReplacementNamed('/');
          }
        },
        child: OnboardingAnimatedButtonText(controller: _controller,),
      ),
    ],
  ),);
}