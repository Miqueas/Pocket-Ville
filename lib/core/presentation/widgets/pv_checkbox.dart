import 'package:flutter/material.dart';

final class PVCheckbox extends StatelessWidget {
  const PVCheckbox({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
    behavior: .opaque,
    onTap: onTap,
    child: Padding(
      padding: const .all(8),
      child: Container(
        width: 18,
        height: 18,
        decoration: BoxDecoration(
          border: .all(color: const Color(0xFFD6D6D6),),
          borderRadius: .circular(4),
        ),
      ),
    ),
  );
}