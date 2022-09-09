import 'package:flutter/material.dart';

class BottomButtonsWidget extends StatelessWidget {
  const BottomButtonsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int index = 0; index < 2; index++)
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Transform.rotate(
              angle: 3.85,
              child: Container(
                height: 55,
                width: 16,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          )
      ],
    );
  }
}
