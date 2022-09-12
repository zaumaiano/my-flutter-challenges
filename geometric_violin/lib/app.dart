import 'package:flutter/material.dart';

import 'illustration.dart';

class GeometricViolinApp extends StatelessWidget {
  const GeometricViolinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Geometric Violin App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IllustrationPage(),
    );
  }
}
