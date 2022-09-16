import 'package:character_illustration/functions.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class MouthPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawArc(
      Rect.fromCircle(
        center: const Offset(-10, 0),
        radius: 35,
      ),
      degToRad(360),
      degToRad(180),
      false,
      Paint()
        ..color = lipsFinColor
        ..strokeWidth = 5
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke,
    );

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        const Rect.fromLTWH(-47.5, -7, 75, 15),
        const Radius.elliptical(25, 25),
      ),
      Paint()..color = lipsFinColor,
    );

    Path path = Path();

    path.arcTo(
      Rect.fromCircle(
        center: const Offset(-10, 0),
        radius: 35,
      ),
      degToRad(360),
      degToRad(180),
      true,
    );

    canvas.drawPath(
      path,
      Paint()
        ..color = lipsFinColor
        ..strokeWidth = 8.0
        ..style = PaintingStyle.fill,
    );

    path.arcTo(
      Rect.fromCircle(
        center: const Offset(-10, 0),
        radius: 35,
      ),
      degToRad(360),
      degToRad(180),
      true,
    );

    canvas.drawArc(
      Rect.fromCircle(
        center: const Offset(-10, 0),
        radius: 35,
      ),
      degToRad(375),
      degToRad(100),
      false,
      Paint()
        ..color = deepMouthIrisColor
        ..strokeWidth = 5
        ..style = PaintingStyle.stroke,
    );

    Path deepMouthPath = Path()
      ..arcTo(
        const Rect.fromLTWH(-30, 3, 20, 30),
        degToRad(120),
        degToRad(90),
        true,
      );

    canvas.drawLine(
      const Offset(-27, 10),
      const Offset(23.5, 10),
      Paint()
        ..color = deepMouthIrisColor
        ..strokeCap = StrokeCap.round
        ..strokeWidth = 5,
    );

    canvas.drawCircle(
      const Offset(18, 15),
      5,
      Paint()..color = deepMouthIrisColor,
    );
    canvas.drawCircle(
      const Offset(8, 20),
      10,
      Paint()..color = deepMouthIrisColor,
    );
    canvas.drawCircle(
      const Offset(5, 20),
      12,
      Paint()..color = deepMouthIrisColor,
    );

    canvas.drawCircle(
      const Offset(-10, 22),
      13,
      Paint()..color = deepMouthIrisColor,
    );
    canvas.drawCircle(
      const Offset(-19, 20),
      11,
      Paint()..color = deepMouthIrisColor,
    );

    canvas.drawPath(
      deepMouthPath,
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
