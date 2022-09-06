import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Macindows',
                    style: GoogleFonts.vt323(
                      fontSize: 30,
                      color: const Color(0xFF2f4ce6),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'An error has occurred, obsviously... To continue:',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.vt323(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    "Press CNTRL+ALT+DEL+CMD+OPT+ESC+Unplug+PlugBackIn to restart your computer. Ifo you do this,\nyou will lose all today's work. Watcha gonna do?",
                    style: GoogleFonts.vt323(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    "*** Error ¯\\_(ツ)_/¯",
                    style: GoogleFonts.vt323(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50),
              Text(
                'Forget all that, just click anywhere _',
                textAlign: TextAlign.start,
                style: GoogleFonts.vt323(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
