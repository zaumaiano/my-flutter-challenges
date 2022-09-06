import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:line_icons/line_icons.dart';

import 'widgets/custom_letter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var message = <String>[];
  var character = '';
  bool counting = false;

  final _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _showMessage() async {
    message.clear();
    character = ' ';
    for (var rune
        in "EU TE AMO E INDEPENDENTEMENTE DO LOCAL ONDE ESTEJA SEMPRE ESTAREI COM VOCE SEI QUE VOCE VAI ME ENCONTRAR"
            .runes) {
      var character = String.fromCharCode(rune);
      message.add(character);
    }

    for (var second = 0; second <= message.length; second++) {
      if (second <= message.length) {
        setState(() {
          counting = true;
        });
        await Future.delayed(
          Duration(milliseconds: second + 1100),
          () async {
            if (second < message.length) {
              if (message[second] != ' ') {
                final player = AudioCache(prefix: 'assets/sounds/');
                final url = await player.load('light-sound.mp3');

                await _audioPlayer.play(
                  url.path,
                  volume: 0.8,
                );
              }

              setState(
                () {
                  character = message[second];
                },
              );
            } else if (second == message.length) {
              setState(() {
                character = ' ';
                counting = false;
              });
            }
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            if (counting)
              IconButton(
                onPressed: () {
                  Phoenix.rebirth(context);
                },
                icon: const Icon(
                  LineIcons.timesCircle,
                ),
              ),
          ],
          title: const Text(
            'Stranger Love',
            style:
                TextStyle(fontFamily: 'Benguiat', color: Colors.red, shadows: [
              Shadow(offset: Offset(-0.5, -0.5), color: Colors.white),
              Shadow(offset: Offset(0.5, -0.5), color: Colors.white),
              Shadow(offset: Offset(0.5, 0.5), color: Colors.white),
              Shadow(offset: Offset(-0.5, 0.5), color: Colors.white),
            ]),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background-book.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 80),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomLetterWidget(
                    letter: 'A',
                    currentCharacter: character,
                    color: Colors.lightGreen,
                  ),
                  const SizedBox(width: 20),
                  CustomLetterWidget(
                    letter: 'B',
                    bottomHeight: 15,
                    currentCharacter: character,
                    color: Colors.lightBlue,
                  ),
                  const SizedBox(width: 20),
                  CustomLetterWidget(
                    letter: 'C',
                    bottomHeight: 20,
                    currentCharacter: character,
                    color: Colors.red,
                  ),
                  const SizedBox(width: 20),
                  CustomLetterWidget(
                    letter: 'D',
                    bottomHeight: 15,
                    currentCharacter: character,
                    color: Colors.lightBlue,
                  ),
                  const SizedBox(width: 20),
                  CustomLetterWidget(
                    letter: 'E',
                    bottomHeight: 18,
                    currentCharacter: character,
                    color: Colors.amber,
                  ),
                  const SizedBox(width: 20),
                  CustomLetterWidget(
                    letter: 'F',
                    bottomHeight: 18,
                    currentCharacter: character,
                    color: Colors.orange,
                  ),
                  const SizedBox(width: 10),
                  CustomLetterWidget(
                    letter: 'G',
                    bottomHeight: 20,
                    currentCharacter: character,
                    color: Colors.orange,
                  ),
                  const SizedBox(width: 10),
                  CustomLetterWidget(
                    letter: 'H',
                    bottomHeight: 30,
                    fontSize: 50,
                    currentCharacter: character,
                    color: Colors.purpleAccent,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomLetterWidget(
                    letter: 'I',
                    bottomHeight: 10,
                    fontSize: 40,
                    currentCharacter: character,
                    color: Colors.orange,
                  ),
                  const SizedBox(width: 15),
                  CustomLetterWidget(
                    letter: 'J',
                    headerHeight: 1,
                    currentCharacter: character,
                    color: Colors.amber,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  CustomLetterWidget(
                    letter: 'K',
                    headerHeight: 2,
                    currentCharacter: character,
                    color: Colors.deepPurpleAccent,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  CustomLetterWidget(
                    letter: 'L',
                    bottomHeight: 10,
                    headerHeight: 2,
                    currentCharacter: character,
                    color: Colors.lightGreen,
                  ),
                  const SizedBox(width: 15),
                  CustomLetterWidget(
                    letter: 'M',
                    headerHeight: 2,
                    currentCharacter: character,
                    color: Colors.red,
                  ),
                  const SizedBox(width: 15),
                  CustomLetterWidget(
                    letter: 'N',
                    bottomHeight: 5,
                    fontSize: 40,
                    currentCharacter: character,
                    color: Colors.lightBlue,
                  ),
                  const SizedBox(width: 15),
                  CustomLetterWidget(
                    letter: 'O',
                    bottomHeight: 5,
                    fontSize: 45,
                    currentCharacter: character,
                    color: Colors.purpleAccent,
                  ),
                  const SizedBox(width: 15),
                  CustomLetterWidget(
                    letter: 'P',
                    bottomHeight: 15,
                    currentCharacter: character,
                    color: Colors.deepOrange,
                  ),
                  const SizedBox(width: 30),
                  CustomLetterWidget(
                    letter: 'Q',
                    headerHeight: 5,
                    currentCharacter: character,
                    color: Colors.red,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomLetterWidget(
                    letter: 'R',
                    bottomHeight: 10,
                    fontSize: 40,
                    currentCharacter: character,
                    color: Colors.lightBlue,
                  ),
                  const SizedBox(width: 15),
                  CustomLetterWidget(
                    letter: 'S',
                    headerHeight: 10,
                    fontSize: 40,
                    currentCharacter: character,
                    color: Colors.lightGreen,
                  ),
                  const SizedBox(width: 15),
                  CustomLetterWidget(
                    letter: 'T',
                    headerHeight: 20,
                    currentCharacter: character,
                    color: Colors.orange,
                  ),
                  const SizedBox(width: 15),
                  CustomLetterWidget(
                    letter: 'U',
                    headerHeight: 15,
                    fontSize: 40,
                    currentCharacter: character,
                    color: Colors.lightBlue,
                  ),
                  const SizedBox(width: 15),
                  CustomLetterWidget(
                    letter: 'V',
                    headerHeight: 18,
                    currentCharacter: character,
                    color: Colors.red,
                  ),
                  const SizedBox(width: 15),
                  CustomLetterWidget(
                    letter: 'W',
                    headerHeight: 15,
                    currentCharacter: character,
                    color: Colors.purpleAccent,
                  ),
                  const SizedBox(width: 15),
                  CustomLetterWidget(
                    letter: 'X',
                    headerHeight: 15,
                    currentCharacter: character,
                    color: Colors.deepOrange,
                  ),
                  const SizedBox(width: 15),
                  CustomLetterWidget(
                    letter: 'Y',
                    headerHeight: 12,
                    fontSize: 40,
                    currentCharacter: character,
                    color: Colors.red,
                  ),
                  const SizedBox(width: 20),
                  CustomLetterWidget(
                    letter: 'Z',
                    bottomHeight: 10,
                    fontSize: 40,
                    currentCharacter: character,
                    color: Colors.lightBlueAccent,
                  ),
                ],
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.red,
          onPressed: counting ? null : _showMessage,
          tooltip: 'Mensagem',
          icon: counting
              ? const SizedBox(
                  height: 15,
                  width: 15,
                  child: CircularProgressIndicator(
                    strokeWidth: 3,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
              : const Icon(
                  Icons.message,
                  color: Colors.white,
                ),
          label: const Text(
            'Mensagem',
            style: TextStyle(
              fontFamily: 'Benguiat',
              fontSize: 10,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
