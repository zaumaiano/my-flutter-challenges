import 'package:flutter/material.dart';

import 'page/illustration.dart';

class GameBoyIllustrationApp extends StatelessWidget {
  const GameBoyIllustrationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter GameBoy Illustration App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IllustrationPage(),
    );
  }
}
