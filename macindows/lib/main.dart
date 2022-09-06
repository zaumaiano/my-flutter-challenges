import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'app.dart';

void main() {
  runApp(const MacindowsApp());

  doWhenWindowReady(() {
    appWindow.maximize();
    appWindow.show();
  });
}
