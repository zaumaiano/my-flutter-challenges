import 'package:flutter/material.dart';

class ScreenGameBoyWidget extends StatelessWidget {
  const ScreenGameBoyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          decoration: BoxDecoration(
            color: const Color(0xFF514547),
            border: Border.all(width: 3),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(6),
              topRight: Radius.circular(6),
              bottomRight: Radius.circular(22),
              bottomLeft: Radius.circular(6),
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 7,
                      child: Container(
                        height: 3,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 50),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 3,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 45,
                  top: 30,
                  right: 45,
                  bottom: 18,
                ),
                child: Container(
                  height: 138,
                  decoration: BoxDecoration(
                    color: const Color(0xFF869171),
                    border: Border.all(width: 3),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 4,
                // width: 5,
                decoration: BoxDecoration(
                  color: const Color(0xFF090B07),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            const SizedBox(width: 10),
            for (int index = 0; index < 4; index++)
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  height: 17,
                  width: 4,
                  decoration: BoxDecoration(
                    color: const Color(0xFF090B07),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            const SizedBox(width: 10),
            Expanded(
              child: Container(
                height: 4,
                // width: 5,
                decoration: BoxDecoration(
                  color: const Color(0xFF090B07),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
