import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isObscured = false;
  var secondColor = const Color(0xFF2C2C44);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: secondColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: isObscured ? 0 : null,
                          right: isObscured ? 0 : null,
                          top: isObscured ? 0 : null,
                          bottom: isObscured ? 0 : null,
                          child: AnimatedSize(
                            duration: const Duration(microseconds: 1000),
                            curve: Curves.slowMiddle,
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  stops: [0.2, 0.9, 0.1],
                                  colors: [
                                    Colors.grey,
                                    Colors.white,
                                    Colors.white
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 0.1,
                                    offset: Offset(4, 0),
                                  ),
                                ],
                              ),
                              width: isObscured
                                  ? MediaQuery.of(context).size.width
                                  : 0,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 18.0,
                                right: 12.0,
                              ),
                              child: Icon(
                                Icons.lock_sharp,
                                color: isObscured ? secondColor : Colors.grey,
                                size: 14,
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                obscureText: !isObscured,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: isObscured ? secondColor : Colors.grey,
                                ),
                                cursorColor:
                                    isObscured ? secondColor : Colors.grey,
                                decoration: const InputDecoration(
                                  isDense: true,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      right: 8.0,
                      bottom: 8.0,
                    ),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: InkWell(
                        onTap: () => setState(() {
                          isObscured = !isObscured;
                        }),
                        child: Icon(
                          isObscured
                              ? Icons.flashlight_on
                              : Icons.flashlight_off,
                          color: Colors.grey,
                          size: 45,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
