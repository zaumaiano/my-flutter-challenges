import 'package:flutter/material.dart';

class ListTileInfoWidget extends StatelessWidget {
  final String label;
  final String imagePath;

  const ListTileInfoWidget({
    Key? key,
    required this.label,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: Image.asset('assets/images/$imagePath.png'),
        ),
        const SizedBox(width: 20),
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
