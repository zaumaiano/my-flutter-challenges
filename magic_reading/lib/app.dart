import 'package:flutter/material.dart';

import 'home.dart';

class MagicReadingApp extends StatelessWidget {
  const MagicReadingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Reading Magic App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'Reading Magic'),
    );
  }
}
