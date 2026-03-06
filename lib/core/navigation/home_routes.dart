import 'package:flutter/material.dart';
import 'package:pocket_ville/features/details/presentation/screens/details_screen.dart';
import 'package:pocket_ville/features/home/presentation/screens/home_screen.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';

abstract final class HomeRoutes {
  static const home = '/';
  static const details = '/details';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) =>
    MaterialPageRoute(
      settings: settings,
      builder: (_) => switch (settings.name) {
        details => DetailsScreen(pokemon: settings.arguments as Pokemon),
        _ => const HomeScreen(),
      },
    );
}

/// Typed navigation for the home branch.
extension HomeNavigation on NavigatorState {
  void pushDetails(Pokemon pokemon) => pushNamed(
    HomeRoutes.details,
    arguments: pokemon,
  );
}