import 'package:flutter/material.dart';

class TextAnimationWidget extends StatefulWidget {
  final double fontSize;
  final String currentFontText;
  final String text;
  final Function(String text) onSelectableText;

  const TextAnimationWidget({
    Key? key,
    required this.fontSize,
    required this.currentFontText,
    required this.text,
    required this.onSelectableText,
  }) : super(key: key);

  @override
  State<TextAnimationWidget> createState() => _TextAnimationWidgetState();
}

class _TextAnimationWidgetState extends State<TextAnimationWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFededed),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SelectableText(
                widget.text,
                textAlign: TextAlign.justify,
                onSelectionChanged: (selection, cause) {
                  final selectedText =
                      widget.text.substring(selection.start, selection.end);

                  widget.onSelectableText(selectedText);
                },
                style: TextStyle(
                  fontSize: widget.fontSize,
                  fontFamily: widget.currentFontText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
