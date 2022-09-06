import 'package:flutter/material.dart';

import 'screens/home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'DKDownwardFall',
        brightness: Brightness.dark,
      ),
      home: const HomePage(),
    );
  }
}
