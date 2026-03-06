import 'package:flutter/material.dart';

final class HomeFilterButton extends StatelessWidget {
  const HomeFilterButton({ super.key, });

  @override
  Widget build(BuildContext context) => Container(
    padding: const .all(12),
    alignment: .center,
    decoration: BoxDecoration(
      shape: .circle,
      border: Border.all(
        color: const Color(0xFFE0E0E0),
        width: 1.5,
      ),
    ),
    child: const Icon(
      Icons.filter_alt_outlined,
      size: 22,
      color: Color(0xFF9E9E9E),
    ),
  );
}