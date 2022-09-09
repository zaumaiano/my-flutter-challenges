import 'package:flutter/material.dart';

class ShadowGameBoyWidget extends StatelessWidget {
  const ShadowGameBoyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 30,
      left: 30,
      child: Container(
        height: 600,
        width: 400,
        decoration: const BoxDecoration(
          color: Color(0XFF964049),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(18),
            bottomRight: Radius.circular(50),
            bottomLeft: Radius.circular(18),
          ),
        ),
      ),
    );
  }
}
