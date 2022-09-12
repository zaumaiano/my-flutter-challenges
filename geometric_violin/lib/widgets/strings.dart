import 'package:flutter/material.dart';
import 'package:geometric_violin/colors.dart';

class StringViolinWidget extends StatelessWidget {
  const StringViolinWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -90,
      child: Row(
        children: [
          Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: const [
                      SizedBox(height: 15),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: primaryColor,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      CircleAvatar(
                        radius: 7,
                        backgroundColor: primaryColor,
                      ),
                    ],
                  ),
                  const SizedBox(width: 5),
                  Container(
                    height: 308,
                    width: 7,
                    color: primaryColor,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(width: 5),
          Stack(
            children: [
              SizedBox(
                height: 308,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 15),
                            Container(
                              height: 215,
                              width: 7,
                              color: primaryColor,
                            ),
                          ],
                        ),
                        const SizedBox(width: 5),
                        Column(
                          children: const [
                            SizedBox(
                              height: 5,
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: primaryColor,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: primaryColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
