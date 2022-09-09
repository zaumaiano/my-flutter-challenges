import 'package:flutter/material.dart';

class BottomGameboyBorderWidget extends StatelessWidget {
  const BottomGameboyBorderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.5,
      right: 40,
      left: 12,
      child: Container(
        height: 10,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFfec06b),
              Color(0xFFe8a95e),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ),
    );
  }
}
