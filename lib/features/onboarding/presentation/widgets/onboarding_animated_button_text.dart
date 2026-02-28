import 'package:flutter/material.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';

final class OnboardingAnimatedButtonText extends StatelessWidget {
  const OnboardingAnimatedButtonText({
    super.key,
    required this.controller,
  });

  final PageController controller;

  static const _style = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: .w600,
  );

  double get _page => switch (controller.hasClients) {
    true => controller.page ?? 0,
    false => 0,
  };

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return ListenableBuilder(
      listenable: controller,
      builder: (context, _) {
        final page0 = (1 - _page).clamp(0.0, 1.0);
        final page1 = _page.clamp(0.0, 1.0);
    
        return Stack(
          alignment: .center,
          children: [
            Opacity(
              opacity: page0,
              child: Text(l10n.onboardingContinue, style: _style,),
            ),
            Opacity(
              opacity: page1,
              child: Text(l10n.onboardingGetStarted, style: _style,),
            ),
          ],
        );
      },
    );
  }
}