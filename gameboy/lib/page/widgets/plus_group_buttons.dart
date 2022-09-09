import 'package:flutter/material.dart';

class PlusGroupButtonsWidget extends StatelessWidget {
  const PlusGroupButtonsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        height: 120,
        color: const Color(0xFFf9a84d),
        width: 120,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 100,
              width: 30,
              // color: Colors
              //     .red,
              decoration: BoxDecoration(
                color: const Color(0xFF654b4c),
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(9),
              ),
            ),
            Container(
              height: 30,
              width: 100,
              // color: Colors
              //     .green,
              decoration: BoxDecoration(
                color: const Color(0xFF654b4c),
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(9),
              ),
            ),
            Container(
              height: 90,
              width: 25,
              decoration: BoxDecoration(
                color: const Color(0xFF654b4c),
                borderRadius: BorderRadius.circular(9),
              ),
            )
          ],
        ),
      ),
    );
  }
}
