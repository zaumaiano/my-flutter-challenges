import 'package:flutter/material.dart';

import 'home.dart';

class CharacterIllustrationApp extends StatelessWidget {
  const CharacterIllustrationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ByTheRiver App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
