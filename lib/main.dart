import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';
import 'package:pocket_ville/features/home/presentation/screens/home_screen.dart';
import 'package:pocket_ville/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:pocket_ville/features/root/presentation/screens/root_screen.dart';
import 'package:pocket_ville/features/splash/presentation/screens/splash_screen.dart';

void main() => runApp(const ProviderScope(child: PocketVilleApp(),),);

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
  Widget build(BuildContext context) => AnnotatedRegion(
    value: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: .dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarIconBrightness: .dark,
    ),
    child: MaterialApp(
      home: home,
      title: 'Pocket Ville',
      theme: _buildTheme(Colors.blue, .light),
      themeMode: .system,
      darkTheme: _buildTheme(Colors.blue, .dark),
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashScreen(),
        '/onboarding': (_) => const OnboardingScreen(),
        '/': (_) => const RootScreen(),
      },
    ),
  );
}