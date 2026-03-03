import 'package:flutter/material.dart';

final class LoadingDot extends StatelessWidget {
  const LoadingDot({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) => Container(
    width: 8,
    height: 8,
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle,
    ),
  );
}