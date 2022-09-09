import 'package:flutter/material.dart';

class RedButtonWidget extends StatelessWidget {
  const RedButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 2.3,
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xFFf9a84d),
            borderRadius: BorderRadius.circular(50)),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 20,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Color(0xFFee2c2e),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 20,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Color(0xFFee2c2e),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
