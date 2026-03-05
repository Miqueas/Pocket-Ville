import 'package:flutter/material.dart';
import 'package:pocket_ville/core/extensions/gap.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';

final class RegionsScreen extends StatelessWidget {
  const RegionsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness.name;

    return Column(
      mainAxisAlignment: .center,
      children: [
        Image.asset('assets/coming-soon-illustration-$brightness-mode.png',),
        16.h,
        Text(
          AppLocalizations.of(context)!.comingSoonTitle,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: .w600,
          ),
          textAlign: .center,
        ),
        8.h,
        Text(
          AppLocalizations.of(context)!.comingSoonSubtitle,
          style: const TextStyle(
            fontSize: 14,
          ),
          textAlign: .center,
        ),
      ],
    );
  }
}