import 'package:flutter/material.dart';

extension Integer on Color {
  // From the Flutter source code.
  int get integer {
    final rInt8 = (r * 255.0).round() & 0xFF;
    final gInt8 = (g * 255.0).round() & 0xFF;
    final bInt8 = (b * 255.0).round() & 0xFF;
    final aInt8 = (a * 255.0).round() & 0xFF;

    return (aInt8 << 24) | (rInt8 << 16) | (gInt8 << 8) | (bInt8 << 0);
  }
}