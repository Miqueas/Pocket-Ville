import 'package:flutter/material.dart';
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
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    body: SafeArea(
      child: Padding(
        padding: const .all(16),
        child: Column(
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
              onPressed: () => _controller.nextPage(
                curve: Curves.easeInOut,
                duration: const Duration(milliseconds: 150),
              ),
              child: OnboardingAnimatedButtonText(controller: _controller,),
            ),
          ],
        ),
      ),
    ),
  );
}