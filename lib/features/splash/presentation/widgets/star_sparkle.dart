// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pocket_ville/features/splash/presentation/painters/star_painter.dart';

final class StarSparkle extends StatelessWidget {
  final double size;

  const StarSparkle({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) => CustomPaint(
    size: Size(size, size),
    painter: StarPainter(),
  );
}