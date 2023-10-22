import 'dart:math';

import 'package:flutter/material.dart';

class TrickerProviderAnimation extends StatefulWidget {
  const TrickerProviderAnimation({super.key});

  @override
  State<TrickerProviderAnimation> createState() =>
      _TrickerProviderAnimationState();
}

class _TrickerProviderAnimationState extends State<TrickerProviderAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: controller,
        child: GestureDetector(
          onTap: () {
            // controller.reverse();
            controller.stop();
            // controller.repeat();
          },
          child: Center(
            child: Image.asset(
              'assets/images/avatar.png',
              width: 200,
              height: 200,
            ),
          ),
        ),
        builder: (context, child) {
          return Transform.rotate(
            angle: controller.value * 2 * pi,
            child: child,
          );
        },
      ),
    );
  }
}
