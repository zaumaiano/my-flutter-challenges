import 'package:flutter/material.dart';

class RightGameboyBorderWidget extends StatelessWidget {
  const RightGameboyBorderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(13),
          bottomRight: Radius.circular(45),
          bottomLeft: Radius.circular(18),
        ),
      ),
    );
  }
}
