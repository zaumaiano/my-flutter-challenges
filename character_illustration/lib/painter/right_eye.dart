import 'package:character_illustration/functions.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class RightEyePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint eyePaint = Paint()
      ..color = eyeColor
      ..strokeWidth = 5
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      const Offset(0, 0),
      65,
      eyePaint,
    );

    canvas.drawCircle(
      const Offset(-20, -36),
      9,
      Paint()..color = Colors.white,
    );

    canvas.drawCircle(
      const Offset(-20, 14),
      28,
      Paint()..color = deepMouthIrisColor,
    );

    canvas.drawArc(
      const Rect.fromLTWH(-38, 0, 25, 31),
      degToRad(90),
      degToRad(115),
      false,
      Paint()
        ..color = skinShineColor
        ..strokeWidth = 4
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke,
    );

    canvas.drawCircle(
      const Offset(-22, 15),
      5,
      Paint()..color = Colors.white,
    );

    canvas.drawArc(
      Rect.fromCircle(
        center: const Offset(0, 0),
        radius: 65,
      ),
      degToRad(110),
      degToRad(155),
      false,
      Paint()
        ..color = borderEyeColor
        ..strokeWidth = 5
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke,
    );

    canvas.drawArc(
      Rect.fromCircle(
        center: const Offset(0, 0),
        radius: 65,
      ),
      degToRad(93),
      degToRad(10),
      false,
      Paint()
        ..color = borderEyeColor
        ..strokeWidth = 5
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke,
    );

    canvas.drawArc(
      Rect.fromCircle(
        center: const Offset(0, 0),
        radius: 65,
      ),
      degToRad(45),
      degToRad(40),
      false,
      Paint()
        ..color = borderEyeColor
        ..strokeWidth = 5
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke,
    );

    canvas.drawLine(
      const Offset(-20, -75),
      const Offset(-40, -75),
      Paint()
        ..color = borderEyeColor
        ..strokeCap = StrokeCap.round
        ..strokeWidth = 5,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
