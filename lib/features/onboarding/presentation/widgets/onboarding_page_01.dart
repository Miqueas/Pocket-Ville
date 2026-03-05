import 'package:flutter/material.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';
import 'package:pocket_ville/core/presentation/widgets/dynamic_svg_asset.dart';

final class OnboardingPage01 extends StatelessWidget {
  const OnboardingPage01({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness.name;

    return Column(
      spacing: 16,
      mainAxisAlignment: .end,
      children: [
        DynamicSvgAsset(
          asset: 'assets/onboarding/kid-doctor-$brightness-mode.svg'
        ),
        Text(
          AppLocalizations.of(context)!.onboardingTitle01,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: .center,
        ),
        Text(
          AppLocalizations.of(context)!.onboardingSubtitle01,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: .center,
        ),
      ],
    );
  }
}