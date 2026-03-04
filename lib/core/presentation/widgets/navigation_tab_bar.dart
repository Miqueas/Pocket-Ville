import 'package:flutter/material.dart';
import 'package:pocket_ville/core/presentation/widgets/navigation_tab_bar_item.dart';

final class NavigationTabBar extends StatelessWidget {
  const NavigationTabBar({ super.key, });

  @override
  Widget build(BuildContext context) {
    final viewInsets = MediaQuery.viewInsetsOf(context);
    final viewPadding = MediaQuery.paddingOf(context);

    return Container(
      padding: const EdgeInsets.all(16).copyWith(
        bottom: viewInsets.bottom + viewPadding.bottom + 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const .only(
          topLeft: .circular(16),
          topRight: .circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .2),
            offset: const Offset(0, -1),
            blurRadius: 4,
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: .spaceAround,
        children: [
          NavigationTabBarItem(
            icon: 'house',
            label: 'Pokedex',
            active: true,
          ),
          NavigationTabBarItem(
            icon: 'globe',
            label: 'Regions',
            active: false,
          ),
          NavigationTabBarItem(
            icon: 'heart',
            label: 'Favorites',
            active: false,
          ),
          NavigationTabBarItem(
            icon: 'user',
            label: 'Profile',
            active: false,
          ),
        ],
      ),
    );
  }
}