import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';
import 'package:pocket_ville/core/navigation/app_router.dart';
import 'package:pocket_ville/features/root/presentation/screens/root_screen.dart';

void main() async {
  await dotenv.load();
  runApp(const ProviderScope(child: PocketVilleApp(),),);
}

final class PocketVilleApp extends StatelessWidget {
  const PocketVilleApp({ super.key, });

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
      textTheme: base.textTheme.apply(fontFamily: 'Poppins',),
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
      home: const RootScreen(),
      title: 'Pocket Ville',
      theme: _buildTheme(Colors.blue, .light),
      themeMode: .light,
      initialRoute: AppRouter.splash,
      onGenerateRoute: AppRouter.onGenerateRoute,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      debugShowCheckedModeBanner: false,
    ),
  );
}