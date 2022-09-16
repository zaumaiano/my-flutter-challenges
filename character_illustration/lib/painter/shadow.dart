import 'package:flutter/material.dart';

import 'colors.dart';

class ShadowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        const Rect.fromLTWH(-48, -19, 450, 250),
        const Radius.elliptical(200, 200),
      ),
      Paint()..color = shadowColor,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
