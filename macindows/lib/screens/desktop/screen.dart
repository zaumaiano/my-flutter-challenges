import 'package:flutter/material.dart';
import 'widgets/desktop_Icon.dart';
import 'widgets/fixed_icon.dart';
import 'widgets/window.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  bool selected = false;
  double xPos = 550.0;
  double yPos = 200.0;
  int iconIndex = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Positioned(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  iconIndex = 5;
                });
              },
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/desktop-background.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    DesktopIconWidget(
                                      label: 'MyPictures',
                                      imagePath: 'assets/images/folder.png',
                                      selected: iconIndex == 0 ? true : false,
                                      onSelected: () {
                                        setState(() {
                                          iconIndex = 0;
                                        });
                                      },
                                    ),
                                    const SizedBox(height: 30),
                                    DesktopIconWidget(
                                      label: 'DesginerCC',
                                      imagePath:
                                          'assets/images/designer-cc.png',
                                      selected: iconIndex == 1 ? true : false,
                                      onSelected: () {
                                        setState(() {
                                          iconIndex = 1;
                                        });
                                      },
                                    ),
                                    const SizedBox(height: 30),
                                    DesktopIconWidget(
                                      label: 'Procastiland\nExplorer',
                                      imagePath:
                                          'assets/images/procastiland-explorer.png',
                                      selected: iconIndex == 2 ? true : false,
                                      onSelected: () {
                                        setState(() {
                                          iconIndex = 2;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    DesktopIconWidget(
                                      label: 'Solitaire',
                                      imagePath: 'assets/images/solitaire.png',
                                      selected: iconIndex == 3 ? true : false,
                                      onSelected: () {
                                        setState(() {
                                          iconIndex = 3;
                                        });
                                      },
                                    ),
                                    const SizedBox(height: 30),
                                    DesktopIconWidget(
                                      label: 'Spotinamp',
                                      imagePath: 'assets/images/spotinamp.png',
                                      selected: iconIndex == 4 ? true : false,
                                      onSelected: () {
                                        setState(() {
                                          iconIndex = 4;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 100,
                      right: 100,
                      child: Row(
                        children: [
                          const Spacer(),
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color(0xFFf4ead6),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  topRight: Radius.circular(100),
                                ),
                              ),
                              height: 80,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // CircleAvatar(),
                                  Expanded(
                                    flex: 8,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        FixedIconWidget(
                                          imagePath: 'my-computer',
                                          toolTipMessage: 'My Computer',
                                        ),
                                        FixedIconWidget(
                                          imagePath: 'mail',
                                          toolTipMessage: 'Mail',
                                        ),
                                        FixedIconWidget(
                                          imagePath: 'chat',
                                          toolTipMessage: 'Chat',
                                        ),
                                        FixedIconWidget(
                                          imagePath: 'shutdown',
                                          toolTipMessage: 'Shutdown',
                                        ),
                                        FixedIconWidget(
                                          imagePath: 'designer-cc',
                                          toolTipMessage: 'Designer-CC',
                                        ),
                                      ],
                                    ),
                                  ),

                                  const Expanded(
                                    flex: 1,
                                    child: VerticalDivider(),
                                  ),

                                  const FixedIconWidget(
                                    imagePath: 'trash',
                                    toolTipMessage: 'Trash',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    Positioned(
                      left: xPos,
                      top: yPos,
                      child: Draggable(
                        feedback: const WindowWidget(),
                        childWhenDragging: const SizedBox.shrink(),
                        onDragEnd: (dragDetails) {
                          setState(() {
                            xPos = dragDetails.offset.dx;
                            yPos = dragDetails.offset.dy;
                          });
                        },
                        child: const WindowWidget(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
