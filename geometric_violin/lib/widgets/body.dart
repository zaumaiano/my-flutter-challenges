import 'package:flutter/material.dart';
import 'package:geometric_violin/colors.dart';

class BodyViolinWidget extends StatelessWidget {
  const BodyViolinWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        CircleAvatar(
          backgroundColor: primaryColor,
          radius: 65,
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: const [
              Positioned(
                bottom: -10,
                child: SizedBox(
                  height: 30,
                  width: 150,
                  child: Material(
                    color: Colors.white,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 55,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: secondaryColor,
                ),
              ),
            ],
          ),
        ),
        CircleAvatar(
          backgroundColor: primaryColor,
          radius: 95,
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: const [
              Positioned(
                top: -10,
                child: SizedBox(
                  height: 30,
                  width: 150,
                  child: Material(
                    color: Colors.white,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 85,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: secondaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
