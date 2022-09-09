import 'package:flutter/material.dart';

class TopLinesScreenWidget extends StatelessWidget {
  const TopLinesScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 35,
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black,
                width: 4,
              ),
            ),
          ),
        ),
        Positioned(
          left: 42,
          child: Container(
            color: const Color(0xFF090B07),
            height: 35,
            width: 4,
          ),
        ),
        Positioned(
          right: 42,
          child: Container(
            color: const Color(0xFF090B07),
            height: 35,
            width: 4,
          ),
        )
      ],
    );
  }
}
