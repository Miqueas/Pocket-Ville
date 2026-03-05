import 'package:flutter/material.dart';
import 'package:pocket_ville/core/presentation/widgets/base_button.dart';

final class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
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
    normalColor: const Color(0xFF1E88E5),
    pressedColor: const Color(0xFF1565C0),
    onPressed: onPressed,
    child: child,
  );
}