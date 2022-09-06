import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLottieWidget extends StatefulWidget {
  const CustomLottieWidget({
    Key? key,
    required this.animationPathFile,
    required this.animationController,
  }) : super(key: key);

  final String animationPathFile;
  final AnimationController animationController;

  @override
  State<CustomLottieWidget> createState() => _CustomLottieWidgetState();
}

class _CustomLottieWidgetState extends State<CustomLottieWidget> {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.4,
      child: Lottie.asset(
        widget.animationPathFile,
        controller: widget.animationController,
        width: 100,
        onLoaded: (composition) {
          widget.animationController
            ..duration = composition.duration
            ..forward();
        },
      ),
    );
  }
}
