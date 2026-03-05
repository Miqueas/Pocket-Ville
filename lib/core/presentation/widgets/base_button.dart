import 'package:flutter/material.dart';

final class BaseButton extends StatefulWidget {
  const BaseButton({
    super.key,
    this.width,
    this.height,
    required this.normalColor,
    required this.pressedColor,
    required this.onPressed,
    this.child,
  });

  final Color normalColor, pressedColor;
  final Widget? child;
  final double? width, height;
  final VoidCallback onPressed;

  @override
  State<BaseButton> createState() => _BaseButtonState();
}

final class _BaseButtonState extends State<BaseButton> {
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
      duration: const Duration(milliseconds: 100,),
      decoration: BoxDecoration(
        color: _isPressed ? widget.pressedColor : widget.normalColor,
        borderRadius: .circular(100),
      ),
      child: widget.child,
    ),
  );
}