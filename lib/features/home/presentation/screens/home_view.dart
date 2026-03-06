import 'package:flutter/material.dart';
import 'package:pocket_ville/core/navigation/home_routes.dart';

final class HomeView extends StatefulWidget {

  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

final class _HomeViewState extends State<HomeView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) => PopScope(
    canPop: false,
    onPopInvokedWithResult: (didPop, _) async {
      if (didPop) return;

      // First try to pop from the nested navigator
      final canPop = _navigatorKey.currentState?.canPop() ?? false;

      if (canPop) {
        _navigatorKey.currentState?.pop();
      } 
    },
    child: Navigator(
      key: _navigatorKey,
      clipBehavior: .none,
      onGenerateRoute: HomeRoutes.onGenerateRoute,
    ),
  );
}