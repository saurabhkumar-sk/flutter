import 'dart:developer';

import 'package:flutter/material.dart';

class LikeTweenAnimation extends StatefulWidget {
  const LikeTweenAnimation({super.key});

  @override
  State<LikeTweenAnimation> createState() => _LikeTweenAnimationState();
}

class _LikeTweenAnimationState extends State<LikeTweenAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _animation;
  bool like = false;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    final curve = CurvedAnimation(parent: _controller, curve: Curves.bounceIn);

    _animation = ColorTween(begin: Colors.grey, end: Colors.red).animate(curve);

    _controller.addListener(() {
      log(_animation.value.toString(), name: 'conrollerlistener');
    });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        like = true;
      } else if (status == AnimationStatus.dismissed) {
        like = false;
      }
      log(status.toString(), name: 'status');
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Animation',
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedBuilder(
              animation: _animation,
              builder: (BuildContext context, Widget? child) {
                return IconButton(
                  onPressed: () {
                    like ? _controller.reverse() : _controller.forward();
                    // setState(() {
                    //   like = !like;
                    // });
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: _animation.value,
                    size: 100,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
