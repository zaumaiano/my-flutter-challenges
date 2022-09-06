import 'package:flutter/material.dart';

class BlueScreen extends StatefulWidget {
  const BlueScreen({Key? key}) : super(key: key);

  @override
  State<BlueScreen> createState() => _BlueScreenState();
}

class _BlueScreenState extends State<BlueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2f4ce6),
      body: SizedBox(
        width: double.infinity,
        child: InkWell(
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          overlayColor:
              MaterialStateProperty.resolveWith((states) => Colors.transparent),
          mouseCursor: MouseCursor.uncontrolled,
          onTap: () {
            Navigator.pop(context);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Macindows',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFF2f4ce6),
                      fontFamily: 'VT323',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'An error has occurred, obsviously... To continue:',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: 'VT323',
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    "Press CNTRL+ALT+DEL+CMD+OPT+ESC+Unplug+PlugBackIn to restart your computer. Ifo you do this,\nyou will lose all today's work. Watcha gonna do?",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: 'VT323',
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    "*** Error ¯\\_(ツ)_/¯",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: 'VT323',
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50),
              const Text(
                'Forget all that, just click anywhere _',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontFamily: 'VT323',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
