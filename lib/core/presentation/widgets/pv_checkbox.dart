import 'package:flutter/material.dart';

final class PVCheckbox extends StatelessWidget {
  const PVCheckbox({
    super.key,
    required this.checked,
    this.onTap,
  });

  final bool checked;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
    behavior: .opaque,
    onTap: onTap,
    child: Padding(
      padding: const .all(8),
      child: AnimatedContainer(
        width: 18,
        height: 18,
        duration: const Duration(milliseconds: 150),
        decoration: BoxDecoration(
          color: switch (checked) {
            true => const Color(0xFF1F49B6),
            false => null,
          },
          border: switch (checked) {
            true => null,
            false => .all(color: const Color(0xFFD6D6D6),),
          },
          borderRadius: .circular(4),
        ),
        child: switch (checked) {
          false => null,
          true => const Icon(
            Icons.check_rounded,
            size: 14,
            color: Colors.white,
          ),
        },
      ),
    ),
  );
}