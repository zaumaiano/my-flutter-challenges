import 'package:flutter/material.dart';

class TitleBarButtonWidget extends StatelessWidget {
  final String toolTipMessage;
  final Color color;

  const TitleBarButtonWidget({
    Key? key,
    required this.toolTipMessage,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: toolTipMessage,
      child: InkWell(
        onTap: () {},
        child: CircleAvatar(
          radius: 9,
          backgroundColor: Colors.black,
          child: CircleAvatar(
            radius: 7,
            backgroundColor: color,
          ),
        ),
      ),
    );
  }
}
