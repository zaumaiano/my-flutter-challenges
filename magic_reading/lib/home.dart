import 'package:flutter/material.dart';

import 'helpers/texts.dart';
import 'widgets/custom_lottie.dart';
import 'widgets/font_bottom_sheet.dart';
import 'widgets/text_animation_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late final AnimationController animationController;
  PageController? _pageController;

  bool showAppBar = true;
  double fontSize = 16.0;
  String currentFontText = 'Baskervville';
  String animationPathFile = '';

  @override
  void initState() {
    super.initState();

    _pageController = PageController(
      initialPage: 0,
      keepPage: true,
    );

    animationController = AnimationController(
      vsync: this,
    );

    animationController.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          animationController.reset();
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();

    _pageController!.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFededed),
      appBar: showAppBar
          ? AppBar(
              backgroundColor: const Color.fromARGB(255, 58, 145, 216),
              title: Text(widget.title),
              actions: [
                IconButton(
                  iconSize: 12,
                  splashRadius: 18,
                  onPressed: () {
                    showModalBottomSheet(
                      barrierColor: Colors.transparent,
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      builder: (context) {
                        return FontBottomSheet(
                          onTapFontText: (value) {
                            setState(() {
                              currentFontText = value;
                            });
                            Navigator.pop(context);
                          },
                          currentFontText: currentFontText,
                        );
                      },
                    );
                  },
                  icon: const Text('Aa'),
                ),
              ],
            )
          : null,
      body: GestureDetector(
        onDoubleTap: () {
          setState(() {
            showAppBar = !showAppBar;
          });
        },
        onTap: () {
          setState(() {
            animationPathFile = '';
            animationController.reset();
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              PageView(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: [
                  TextAnimationWidget(
                    fontSize: fontSize,
                    currentFontText: currentFontText,
                    text: firstText,
                    onSelectableText: (String text) {
                      var path = animationPath(text);

                      setState(() {
                        animationPathFile = path;
                      });
                    },
                  ),
                  TextAnimationWidget(
                    fontSize: fontSize,
                    currentFontText: currentFontText,
                    text: secondText,
                    onSelectableText: (String text) {
                      var path = animationPath(text);
                      setState(() {
                        animationPathFile = path;
                      });
                    },
                  ),
                  TextAnimationWidget(
                    fontSize: fontSize,
                    currentFontText: currentFontText,
                    text: thirdText,
                    onSelectableText: (String text) {
                      var path = animationPath(text);
                      setState(() {
                        animationPathFile = path;
                      });
                    },
                  ),
                ],
              ),
              if (animationPathFile.isNotEmpty)
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomLottieWidget(
                        animationPathFile: animationPathFile,
                        animationController: animationController),
                  ),
                ),
            ],
          ),
        ),
      ),
      floatingActionButton: showAppBar
          ? Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Slider(
                      value: fontSize,
                      activeColor: const Color.fromARGB(255, 58, 145, 216),
                      thumbColor: Colors.black,
                      min: 16.0,
                      max: 22.0,
                      divisions: 6,
                      label: '${fontSize.round()}',
                      onChanged: (double value) {
                        setState(() {
                          fontSize = value;
                        });
                      },
                    ),
                  ],
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }
}
