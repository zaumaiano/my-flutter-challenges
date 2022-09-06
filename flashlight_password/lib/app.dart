import 'package:flutter/material.dart';

import 'screen/home.dart';

class FlashlightPasswordApp extends StatelessWidget {
  const FlashlightPasswordApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flashlight Password',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
