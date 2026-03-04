import 'package:flutter/material.dart';
import 'package:pocket_ville/core/presentation/widgets/dynamic_svg_asset.dart';

final class NavigationTabBarItem extends StatelessWidget {
  const NavigationTabBarItem({
    super.key,
    required this.icon,
    required this.label,
    required this.active,
    this.onTap,
  });

  final bool active;
  final String icon;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: Column(
      mainAxisSize: .min,
      children: [
        DynamicSvgAsset(
          asset: 'assets/icons/$icon.svg',
          width: 32,
          height: 32,
          replacements: switch (active) {
            true => { RegExp(r'#424242'): const Color(0xFF1565C0), },
            false => null,
          },
        ),
        Text(label, style: TextStyle(fontWeight: active ? .w700 : .w500,),),
      ],
    ),
  );
}