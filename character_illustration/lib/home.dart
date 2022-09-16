import 'package:character_illustration/painter/dorsal_fin.dart';
import 'package:character_illustration/painter/mouth.dart';
import 'package:character_illustration/painter/pectoral_fin.dart';
import 'package:character_illustration/painter/right_eye.dart';
import 'package:character_illustration/painter/shadow.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'painter/colors.dart';
import 'painter/left_eye.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(180),
                child: Container(
                  color: firstLayerColor,
                  child: Padding(
                    padding: const EdgeInsets.all(35),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(140),
                          child: Stack(
                            children: [
                              Container(
                                color: secondLayerColor,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 48,
                                    top: 28,
                                    right: 46,
                                    bottom: 32,
                                  ),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        top: 210,
                                        left: 32,
                                        child: CustomPaint(
                                          painter: PectoralFinPainter(),
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 250,
                                              width: 315,
                                              color: skinShineColor,
                                            ),
                                            Positioned(
                                              top: 100,
                                              left: 140,
                                              right: 20,
                                              child: CustomPaint(
                                                painter: ShadowPainter(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        left: 120,
                                        right: 120,
                                        top: 190,
                                        bottom: 10,
                                        child: CustomPaint(
                                          painter: MouthPainter(),
                                        ),
                                      ),
                                      Positioned(
                                        top: 54,
                                        right: 126,
                                        left: -20,
                                        child: CustomPaint(
                                          painter: LeftEyePainter(),
                                        ),
                                      ),
                                      Positioned(
                                        top: 26,
                                        right: 120,
                                        left: 110,
                                        child: CustomPaint(
                                          painter: DorsalFinPainter(),
                                        ),
                                      ),
                                      Positioned(
                                        top: 120,
                                        left: 206,
                                        right: 110,
                                        child: CustomPaint(
                                          painter: RightEyePainter(),
                                        ),
                                      ),
                                      Positioned(
                                        top: 210,
                                        left: 276,
                                        right: 20,
                                        child: Transform(
                                          transform: Matrix4.rotationY(math.pi),
                                          child: CustomPaint(
                                            painter: PectoralFinPainter(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
