import 'package:flutter/material.dart';

final class DetailsElementBackgroundPainter extends CustomPainter {
  const DetailsElementBackgroundPainter(this.color);

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = Path()
      ..addOval(Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 3),
        radius: size.width * .7,
      ))
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}