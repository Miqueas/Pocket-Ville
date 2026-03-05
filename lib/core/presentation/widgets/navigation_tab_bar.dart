import 'package:flutter/material.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';
import 'package:pocket_ville/core/presentation/widgets/navigation_tab_bar_item.dart';

enum NavigationTabBarBranch {
  home,
  globe,
  favorites,
  profile,
}

final class NavigationTabBar extends StatelessWidget {
  const NavigationTabBar({
    super.key,
    required this.activeBranch,
    required this.onBranchSelected,
  });

  final NavigationTabBarBranch activeBranch;
  final ValueChanged<NavigationTabBarBranch> onBranchSelected;

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final viewInsets = MediaQuery.viewInsetsOf(context);
    final viewPadding = MediaQuery.paddingOf(context);

    return Container(
      padding: const EdgeInsets.all(16).copyWith(
        bottom: viewInsets.bottom + viewPadding.bottom + 16,
      ),
      decoration: BoxDecoration(
        color: switch (brightness) {
          .dark => const Color(0xFF16161B),
          .light => Colors.white,
        },
        borderRadius: const .only(
          topLeft: .circular(16),
          topRight: .circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(
              alpha: switch (brightness) {
                .dark => .8,
                .light => .2,
              },
            ),
            offset: const Offset(0, -1),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: .spaceAround,
        children: [
          NavigationTabBarItem(
            icon: 'house',
            label: AppLocalizations.of(context)!.pokedex,
            active: activeBranch == .home,
            onTap: () => onBranchSelected(.home),
          ),
          NavigationTabBarItem(
            icon: 'globe',
            label: AppLocalizations.of(context)!.regions,
            active: activeBranch == .globe,
            onTap: () => onBranchSelected(.globe),
          ),
          NavigationTabBarItem(
            icon: 'heart',
            label: AppLocalizations.of(context)!.favorites,
            active: activeBranch == .favorites,
            onTap: () => onBranchSelected(.favorites),
          ),
          NavigationTabBarItem(
            icon: 'user',
            label: AppLocalizations.of(context)!.profile,
            active: activeBranch == .profile,
            onTap: () => onBranchSelected(.profile),
          ),
        ],
      ),
    );
  }
}