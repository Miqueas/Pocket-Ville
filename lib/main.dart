import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';
import 'package:pocket_ville/features/onboarding/presentation/screens/onboarding_screen.dart';

void main() => runApp(const ProviderScope(
  child: PocketVilleApp(
    home: OnboardingScreen(),
  ),
));

final class PocketVilleApp extends StatelessWidget {
  const PocketVilleApp({
    super.key,
    this.home,
  });

  final Widget? home;

  ThemeData _buildTheme(Color seedColor, Brightness brightness) {
    final base = ThemeData.from(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: seedColor,
        brightness: brightness,
        dynamicSchemeVariant: .fidelity,
      ),
    );

    return base.copyWith(
      textTheme: base.textTheme.apply(fontFamily: 'Poppins'),
      brightness: brightness,
    );
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: home,
    title: 'Pocket Ville',
    theme: _buildTheme(Colors.blue, .light),
    darkTheme: _buildTheme(Colors.blue, .dark),
    themeMode: .system,
    supportedLocales: AppLocalizations.supportedLocales,
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    debugShowCheckedModeBanner: false,
  );
}