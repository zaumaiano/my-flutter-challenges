import 'package:flutter/material.dart';

import 'screens/desktop/screen.dart';

class MacindowsApp extends StatelessWidget {
  const MacindowsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SourceSansPro',
      ),
      home: const DesktopScreen(),
    );
  }
}
