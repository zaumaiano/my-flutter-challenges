import 'package:character_illustration/functions.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class LeftEyePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = eyeColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 8.0;

    canvas.drawArc(
      const Rect.fromLTWH(0, 0, 118, 130.6),
      degToRad(90),
      degToRad(180),
      false,
      paint,
    );

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        const Rect.fromLTWH(
          11,
          -0.2,
          80,
          130,
        ),
        const Radius.elliptical(140, 200),
      ),
      paint,
    );

    canvas.drawArc(
      const Rect.fromLTWH(0, 0, 118, 130.6),
      degToRad(110),
      degToRad(60),
      false,
      Paint()
        ..color = borderEyeColor
        ..strokeWidth = 5
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke,
    );

    canvas.drawArc(
      const Rect.fromLTWH(
        11,
        -0.2,
        80,
        130,
      ),
      degToRad(80),
      degToRad(15),
      false,
      Paint()
        ..color = borderEyeColor
        ..strokeWidth = 5
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke,
    );

    canvas.drawArc(
      const Rect.fromLTWH(
        11,
        -0.2,
        80,
        130,
      ),
      degToRad(278),
      degToRad(148),
      false,
      Paint()
        ..color = borderEyeColor
        ..strokeWidth = 5
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke,
    );

    canvas.drawCircle(
      const Offset(50, 36),
      9,
      Paint()..color = Colors.white,
    );

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        const Rect.fromLTWH(18, 50, 35, 60),
        const Radius.elliptical(500, 800),
      ),
      Paint()..color = deepMouthIrisColor,
    );

    canvas.drawArc(
      const Rect.fromLTWH(26, 65, 25, 31),
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
      const Offset(38, 80),
      5,
      Paint()..color = Colors.white,
    );

    canvas.drawLine(
      const Offset(80, -9),
      const Offset(58, -9),
      Paint()
        ..color = borderEyeColor
        ..strokeCap = StrokeCap.round
        ..strokeWidth = 5,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
