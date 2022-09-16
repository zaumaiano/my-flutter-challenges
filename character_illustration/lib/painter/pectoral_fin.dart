import 'package:character_illustration/functions.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class PectoralFinPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawArc(
      Rect.fromCircle(
        center: const Offset(0, 0),
        radius: 19,
      ),
      degToRad(270),
      degToRad(180),
      false,
      Paint()
        ..color = lipsFinColor
        ..strokeWidth = 5
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.fill,
    );

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        const Rect.fromLTWH(-48, -19, 65, 38),
        const Radius.elliptical(15, 15),
      ),
      Paint()..color = lipsFinColor,
    );

    canvas.drawLine(
      const Offset(0, -16.5),
      const Offset(38, -16.5),
      Paint()
        ..color = borderEyeColor
        ..strokeCap = StrokeCap.round
        ..strokeWidth = 5,
    );

    canvas.drawRect(
      const Rect.fromLTWH(
        -1.1,
        -18,
        20,
        20,
      ),
      Paint()..color = lipsFinColor,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
