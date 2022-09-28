import 'package:flutter/material.dart';
import 'dart:math' as Math;

class WaveBasePainter extends CustomPainter {
  late Paint _paint;

  @override
  void paint(Canvas canvas, Size size) {
    _paint = Paint()
      ..color = Colors.grey.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;
  }

  @override
  bool shouldRepaint(WaveBasePainter oldDelegate) => false;
}
