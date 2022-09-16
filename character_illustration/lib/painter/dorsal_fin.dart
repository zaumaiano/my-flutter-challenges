import 'package:character_illustration/functions.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class DorsalFinPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(
      const Offset(28, -48),
      const Offset(38, -28),
      Paint()
        ..color = deepMouthIrisColor
        ..strokeCap = StrokeCap.round
        ..strokeWidth = 5,
    );

    canvas.drawArc(
      Rect.fromCircle(
        center: const Offset(52, -32),
        radius: 14,
      ),
      degToRad(170),
      degToRad(120),
      false,
      Paint()
        ..color = deepMouthIrisColor
        ..strokeWidth = 5
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
