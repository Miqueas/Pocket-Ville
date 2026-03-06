import 'package:flutter/material.dart';
import 'package:pocket_ville/core/extensions/gap.dart';

final class ErrorCard extends StatelessWidget {
  const ErrorCard({
    super.key,
    required this.title,
    required this.message,
    this.child,
  });

  final String title;
  final String message;
  final Widget? child;

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: .center,
    children: [
      Image.asset(
        'assets/magikarp.png',
        width: MediaQuery.widthOf(context) * .6,
      ),
      16.h,
      Text(
        title,
        style: const TextStyle(
          color: Color(0xFF333333),
          fontSize: 20,
          fontWeight: .w600,
        ),
        textAlign: .center,
      ),
      8.h,
      Text(
        message,
        style: const TextStyle(
          color: Color(0xFF4D4D4D),
          fontSize: 14,
        ),
        textAlign: .center,
      ),
      16.h,
      ?child,
    ],
  );
}