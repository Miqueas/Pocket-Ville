import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pocket_ville/core/extensions/gap_extension.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';

final class OnboardingPage02 extends StatelessWidget {
  const OnboardingPage02({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness.name;
    return Column(
      mainAxisAlignment: .end,
      children: [
        SvgPicture.asset(
          'assets/onboarding/hilda-$brightness-mode.svg'
        ),
        16.h,
        Text(
          AppLocalizations.of(context)!.onboardingTitle02,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: .center,
        ),
        16.h,
        Text(
          AppLocalizations.of(context)!.onboardingSubtitle02,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: .center,
        ),
      ],
    );
  }
}