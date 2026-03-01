import 'package:flutter/material.dart';
import 'package:pocket_ville/core/presentation/widgets/base_button.dart';

final class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    this.width,
    this.height,
    required this.onPressed,
    this.child,
  });

  final Widget? child;
  final double? width, height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => BaseButton(
    width: width,
    height: height, 
    normalColor: HSLColor.fromAHSL(1, 0, 0, .93).toColor(),
    pressedColor: HSLColor.fromAHSL(1, 0, 0, .84).toColor(),
    onPressed: onPressed,
    child: child,
  );
}