import 'package:flutter/material.dart';
import 'dart:math';

class WaveBasePainter extends CustomPainter {
  late Paint _paint;

  @override
  void paint(Canvas canvas, Size size) {
    _paint = Paint()
      ..color = Colors.grey.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    canvas.translate(0, size.height / 2);
    canvas.scale(1, -1);

    for (int i = 0; i < size.width.toInt(); i++) {
      double x = i.toDouble();
      double r = 2 * sin(i) - 2 * cos(4 * i) + sin(2 * i - pi * 24);
      r = r * 5;
      canvas.drawLine(Offset(x, r), Offset(x, -r), _paint);
    }
  }

  @override
  bool shouldRepaint(WaveBasePainter oldDelegate) => false;
}
