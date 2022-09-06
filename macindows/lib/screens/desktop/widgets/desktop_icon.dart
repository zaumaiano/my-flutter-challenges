import 'package:flutter/material.dart';

class DesktopIconWidget extends StatefulWidget {
  final String label;
  final String imagePath;
  final bool selected;
  final Function onSelected;

  const DesktopIconWidget({
    Key? key,
    required this.label,
    required this.imagePath,
    required this.onSelected,
    this.selected = false,
  }) : super(key: key);

  @override
  State<DesktopIconWidget> createState() => _DesktopIconWidgetState();
}

class _DesktopIconWidgetState extends State<DesktopIconWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onSelected();
      },
      child: Card(
        elevation: 0,
        color: widget.selected
            ? Colors.black.withOpacity(0.2)
            : Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                widget.imagePath,
                height: 80,
              ),
              const SizedBox(height: 5),
              Text(
                widget.label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: widget.selected ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
