import 'package:flutter/material.dart';

final class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    super.key,
    required this.favorited,
    required this.onPressed,
  });

  final bool favorited;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => Container(
    padding: const .all(4),
    decoration: BoxDecoration(
      shape: .circle,
      color: const HSLColor.fromAHSL(.6, 0, 0, 0.46).toColor(),
      border: .all(
        width: 2,
        color: const HSLColor.fromAHSL(1, 0, 0, .98).toColor()
      ),
    ),
    child: Icon(
      switch (favorited) {
        true => Icons.favorite,
        false => Icons.favorite_outline,
      },
      color: switch (favorited) {
        true => const HSLColor.fromAHSL(1, 1, .77, .55).toColor(),
        false => Colors.white,
      }
    ),
  );
}