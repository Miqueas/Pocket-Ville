import 'package:flutter/material.dart';
import 'package:pocket_ville/core/extensions/gap.dart';
import 'package:pocket_ville/core/presentation/widgets/dynamic_svg_asset.dart';

final class DetailsFeature extends StatelessWidget {
  const DetailsFeature({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  final String icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: .start,
    mainAxisSize: .min,
    children: [
      Row(children: [
        DynamicSvgAsset(
          asset: 'assets/icons/$icon.svg',
          width: 22,
        ),
        6.w,
        Text(
          label,
          style: const TextStyle(color: Color(0xFF424242),),
        ),
      ],),
      4.h,
      Container(
        padding: const .all(8),
        alignment: .center,
        decoration: BoxDecoration(
          border: .all(color: const Color(0xFFE0E0E0),),
          borderRadius: .circular(16),
        ),
        child: Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: .w500,
          ),
        ),
      )
    ],
  );
}