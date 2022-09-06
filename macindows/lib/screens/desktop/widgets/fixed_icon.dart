import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

class FixedIconWidget extends StatelessWidget {
  final String imagePath;
  final String toolTipMessage;

  const FixedIconWidget({
    Key? key,
    required this.imagePath,
    required this.toolTipMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        appWindow.close();
      },
      child: Tooltip(
        margin: const EdgeInsets.all(6),
        message: toolTipMessage,
        textStyle: const TextStyle(
          color: Colors.black,
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(seconds: 3),
              child: Image.asset(
                'assets/images/$imagePath.png',
                height: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
