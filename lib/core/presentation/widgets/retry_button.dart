import 'package:flutter/material.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';
import 'package:pocket_ville/core/presentation/widgets/primary_button.dart';

final class RetryButton extends StatelessWidget {
  const RetryButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => PrimaryButton(
    width: .infinity,
    onPressed: onTap,
    child: Text(
      AppLocalizations.of(context)!.retry,
      style: const TextStyle(
        color: Color(0xFFFAFAFA),
        fontSize: 18,
        fontWeight: .w600,
      ),
      textAlign: .center,
    ),
  );
}