import 'package:flutter/material.dart';

class BottomRightLinesWidget extends StatelessWidget {
  const BottomRightLinesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 4,
      child: SizedBox(
        height: 150,
        width: 80,
        child: Transform.rotate(
          angle: 4.64,
          child: Row(
            children: [
              for (int index = 0; index < 5; index++)
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 30,
                    width: 5,
                    decoration: BoxDecoration(
                      color: const Color(0xFF090B07),
                      borderRadius: BorderRadius.circular(5),
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
