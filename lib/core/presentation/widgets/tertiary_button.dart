import 'package:flutter/material.dart';
import 'package:pocket_ville/core/presentation/widgets/base_button.dart';

final class TertiaryButton extends StatelessWidget {
  const TertiaryButton({
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
    normalColor: Colors.transparent,
    pressedColor: const Color(0xFFC5D0EC).withValues(alpha: .4),
    onPressed: onPressed,
    child: child,
  );
}