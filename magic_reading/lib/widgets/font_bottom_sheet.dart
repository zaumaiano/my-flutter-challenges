import 'package:flutter/material.dart';

class FontBottomSheet extends StatefulWidget {
  final Function(String fontext) onTapFontText;
  final String currentFontText;

  const FontBottomSheet({
    Key? key,
    required this.onTapFontText,
    required this.currentFontText,
  }) : super(key: key);

  @override
  State<FontBottomSheet> createState() => _FontBottomSheetState();
}

class _FontBottomSheetState extends State<FontBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(255, 58, 145, 216),
      elevation: 20,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ChoiceFontWidget(
              fontText: 'Baskervville',
              currentFontText: widget.currentFontText,
              onTap: (value) {
                widget.onTapFontText(value);
              },
            ),
            ChoiceFontWidget(
              fontText: 'Sora',
              currentFontText: widget.currentFontText,
              onTap: (value) {
                widget.onTapFontText(value);
              },
            )
          ],
        ),
      ),
    );
  }
}

class ChoiceFontWidget extends StatefulWidget {
  final String fontText;
  final String currentFontText;

  final Function(String font) onTap;

  const ChoiceFontWidget({
    Key? key,
    required this.fontText,
    required this.currentFontText,
    required this.onTap,
  }) : super(key: key);

  @override
  State<ChoiceFontWidget> createState() => _ChoiceFontWidgetState();
}

class _ChoiceFontWidgetState extends State<ChoiceFontWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onTap(widget.fontText),
      child: Opacity(
        opacity: widget.fontText == widget.currentFontText ? 0.5 : 1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Aa',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: widget.fontText,
              ),
            ),
            Text(
              widget.fontText,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
