import 'dart:ui';

import 'package:flutter/material.dart';

final class OnboardingPageIndicatorItem extends StatelessWidget {
  const OnboardingPageIndicatorItem({
    super.key,
    required this.progress,
  });

  final double progress;

  static final _activeColor = const HSLColor.fromAHSL(1, 224, .76, .37).toColor();
  static final _inactiveColor = const HSLColor.fromAHSL(.25, 223, .45, .49).toColor();

  @override
  Widget build(BuildContext context) => Container(
    width: lerpDouble(8, 28, progress)!,
    height: 8,
    decoration: BoxDecoration(
      color: Color.lerp(_inactiveColor, _activeColor, progress),
      borderRadius: .circular(8)
    ),
  );
}