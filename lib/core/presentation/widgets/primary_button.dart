import 'package:flutter/material.dart';

final class PrimaryButton extends StatefulWidget {
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
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

final class _PrimaryButtonState extends State<PrimaryButton> {
  final _normalColor = HSLColor.fromAHSL(1, 208, 0.79, 0.51).toColor();
  final _pressedColor = HSLColor.fromAHSL(1, 208, 0.79, 0.51).toColor();
  var _isPressed = false;

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: widget.onPressed,
    onTapUp: (_) => setState(() => _isPressed = false),
    onTapDown: (_) => setState(() => _isPressed = true),
    child: AnimatedContainer(
      width: widget.width,
      height: widget.height,
      padding: const .symmetric(horizontal: 8, vertical: 16),
      duration: Duration(milliseconds: 150,),
      decoration: BoxDecoration(
        color: _isPressed ? _pressedColor : _normalColor,
        borderRadius: .circular(100),
      ),
      child: widget.child,
    ),
  );
}