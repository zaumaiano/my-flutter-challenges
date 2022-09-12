import 'package:flutter/material.dart';

import 'widgets/body.dart';
import 'widgets/strings.dart';

class IllustrationPage extends StatefulWidget {
  const IllustrationPage({super.key});

  @override
  State<IllustrationPage> createState() => _IllustrationPageState();
}

class _IllustrationPageState extends State<IllustrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: const [
                  BodyViolinWidget(),
                  StringViolinWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
