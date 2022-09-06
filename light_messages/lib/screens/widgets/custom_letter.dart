import 'package:flutter/material.dart';

class CustomLetterWidget extends StatefulWidget {
  final double? headerHeight;
  final double? bottomHeight;
  final Color? color;
  final String letter;
  final double? fontSize;
  final String currentCharacter;

  const CustomLetterWidget({
    Key? key,
    this.headerHeight,
    this.bottomHeight,
    this.color,
    required this.letter,
    this.fontSize,
    this.currentCharacter = ' ',
  }) : super(key: key);

  @override
  State<CustomLetterWidget> createState() => _CustomLetterWidgetState();
}

class _CustomLetterWidgetState extends State<CustomLetterWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.headerHeight != null)
          SizedBox(
            height: widget.headerHeight,
          ),
        Icon(
          Icons.lightbulb,
          color: widget.currentCharacter.contains(widget.letter)
              ? widget.color ?? Colors.yellow
              : Colors.black.withOpacity(0.7),
          size: 25,
        ),
        const SizedBox(height: 5),
        Text(
          widget.letter,
          style: TextStyle(
            fontSize: widget.fontSize ?? 30,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        if (widget.bottomHeight != null)
          SizedBox(
            height: widget.bottomHeight,
          ),
      ],
    );
  }
}
