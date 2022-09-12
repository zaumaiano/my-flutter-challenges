import 'package:flutter/material.dart';
import 'widgets/bottom_buttons.dart';
import 'widgets/bottom_gameboy_border.dart';
import 'widgets/bottom_right_lines.dart';
import 'widgets/left_gameboy_border.dart';
import 'widgets/plus_group_buttons.dart';
import 'widgets/red_button.dart';
import 'widgets/right_gameboy_border.dart';
import 'widgets/screen_gameboy.dart';
import 'widgets/shadow_gameboy.dart';
import 'widgets/top_lines_screen.dart';

class IllustrationPage extends StatefulWidget {
  const IllustrationPage({super.key});

  @override
  State<IllustrationPage> createState() => _IllustrationPageState();
}

class _IllustrationPageState extends State<IllustrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFd24858),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Stack(
                clipBehavior: Clip.none,
                children: [
                  const ShadowGameBoyWidget(),
                  Container(
                    height: 600,
                    width: 400,
                    decoration: BoxDecoration(
                      color: const Color(0xFFfec16c),
                      border: Border.all(
                        width: 6,
                        color: const Color(0xFF110400),
                      ),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFfec06b),
                          Color(0xFFe8a95e),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(18),
                      ),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Row(
                          children: [
                            const LeftGameboyBorderWidget(),
                            Expanded(
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFfaa41b),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(18),
                                      topRight: Radius.circular(13),
                                      bottomRight: Radius.circular(150),
                                      bottomLeft: Radius.circular(18),
                                    ),
                                  ),
                                  child: Material(
                                    shape: const BeveledRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(
                                          90,
                                        ),
                                      ),
                                    ),
                                    color: const Color(0xFFfaa41b),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Positioned(
                                          top: 40,
                                          right: 10,
                                          left: 10,
                                          child: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(20.0),
                                                child: Column(
                                                  children: [
                                                    const ScreenGameBoyWidget(),
                                                    const SizedBox(height: 15),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const SizedBox(
                                                            height: 20),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: const [
                                                            Expanded(
                                                              child:
                                                                  PlusGroupButtonsWidget(),
                                                            ),
                                                            SizedBox(width: 25),
                                                            Expanded(
                                                              child:
                                                                  RedButtonWidget(),
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                            height: 30),
                                                        const BottomButtonsWidget()
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          bottom: -25,
                                          right: 5,
                                          child: BottomRightLinesWidget(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const RightGameboyBorderWidget(),
                          ],
                        ),
                        const BottomGameboyBorderWidget(),
                        const Positioned(
                          child: TopLinesScreenWidget(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
