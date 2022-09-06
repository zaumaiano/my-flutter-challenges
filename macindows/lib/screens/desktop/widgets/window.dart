import 'package:macindows/screens/blue/screen.dart';
import 'package:flutter/material.dart';
import 'title_bar_button.dart';
import 'generic_button.dart';
import 'list_tile_info.dart';

class WindowWidget extends StatelessWidget {
  const WindowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 4,
          right: -4,
          child: SizedBox(
            width: 750,
            height: 550,
            child: Card(
              elevation: 0,
              color: Colors.black,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 750,
          height: 550,
          child: Card(
            elevation: 0,
            color: const Color(0xFFf4ead6),
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      top: 10.0,
                      right: 10.0,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: const [
                              TitleBarButtonWidget(
                                toolTipMessage: 'Close',
                                color: Color(0xFFfabe95),
                              ),
                              SizedBox(width: 4),
                              TitleBarButtonWidget(
                                toolTipMessage: 'Maximize',
                                color: Color(0xFFf9d99b),
                              ),
                            ],
                          ),
                        ),
                        const Expanded(
                            flex: 0,
                            child: Text(
                              'Welcome',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                        Expanded(flex: 2, child: Container())
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    thickness: 3,
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                    top: 20,
                    right: 25.0,
                    bottom: 30.0,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Flexible(
                                flex: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/images/welcome-illus.png',
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                )),
                            Flexible(
                              flex: 8,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          'Welcome to the ',
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          'New Macindows.',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      "The worst update we've ever made.",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          ListTileInfoWidget(
                                            imagePath: 'my-computer',
                                            label:
                                                "The worst update we've ever made.",
                                          ),
                                          ListTileInfoWidget(
                                            imagePath: 'mail',
                                            label:
                                                'Now is easy to read all your spam.',
                                          ),
                                          ListTileInfoWidget(
                                            imagePath: 'chat',
                                            label:
                                                "Talk with people you don't want to talk in real life.",
                                          ),
                                          ListTileInfoWidget(
                                            imagePath: 'clock',
                                            label:
                                                "Still no date & time. \nYou can't lose what you never had.",
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Spacer(),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GenericButtonWidget(
                            label: 'Meh',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => const BlueScreen()),
                                  ));
                            },
                          ),
                          GenericButtonWidget(
                            label: 'Whatever',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
