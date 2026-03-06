import 'package:flutter/material.dart';
import 'package:pocket_ville/core/presentation/screens/base_scaffold.dart';
import 'package:pocket_ville/core/presentation/widgets/navigation_tab_bar.dart';
import 'package:pocket_ville/features/favorites/presentation/screens/favorites_screen.dart';
import 'package:pocket_ville/features/home/presentation/screens/home_screen.dart';
import 'package:pocket_ville/features/coming_soon/presentation/screens/coming_soon_screen.dart';

final class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

final class _RootScreenState extends State<RootScreen> {
  var _pageIndex = 0;

  @override
  Widget build(BuildContext context) => BaseScaffold(
    body: IndexedStack(
      index: _pageIndex,
      children: const [
        HomeScreen(),
        ComingSoonScreen(),
        FavoritesScreen(),
        ComingSoonScreen(),
      ],
    ),
    bottomNavigationBar: NavigationTabBar(
      activeBranch: .values[_pageIndex],
      onBranchSelected: (branch) => setState(() => _pageIndex = branch.index),
    ),
  );
}
