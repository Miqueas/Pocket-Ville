import 'package:flutter/material.dart';
import 'package:pocket_ville/core/extensions/gap.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';
import 'package:pocket_ville/core/presentation/widgets/primary_button.dart';
import 'package:pocket_ville/core/presentation/widgets/secondary_button.dart';

final class HomeFiltersBottomSheetButtons extends StatelessWidget {
  const HomeFiltersBottomSheetButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16).copyWith(
        bottom: 16 + MediaQuery.viewPaddingOf(context).bottom,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .12),
            offset: const Offset(0, -1),
            blurRadius: 3,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: .min,
        children: [
          PrimaryButton(
            width: .infinity,
            onPressed: () {},
            child: Text(
              AppLocalizations.of(context)!.apply,
              style: const TextStyle(
                color: Color(0xFFFAFAFA),
                fontSize: 18,
                fontWeight: .w600,
              ),
              textAlign: .center,
            ),
          ),
          16.h,
          SecondaryButton(
            width: .infinity,
            onPressed: () {},
            child: Text(
              AppLocalizations.of(context)!.cancel,
              style: const TextStyle(
                color: Color(0xFF121212),
                fontSize: 18,
                fontWeight: .w600,
              ),
              textAlign: .center,
            ),
          ),
        ],
      ),
    );
  }
}