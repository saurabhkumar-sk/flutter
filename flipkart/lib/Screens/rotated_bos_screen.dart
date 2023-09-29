import 'package:flutter/material.dart';

class RoatedBoxScreen extends StatelessWidget {
  const RoatedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'RoatedBox',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              color: Colors.green,
              // child: const Text('saurabh'),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.purple,
                  child: const Text('saurabh'),
                ),
              ),
              RotatedBox(
                quarterTurns: 1,
                child: Container(
                  color: Colors.amber,
                  child: const Text('saurabh'),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: const Text('saurabh'),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.pink,
              // child: const Text('saurabh'),
            ),
          ),
        ],
      ),
    );
  }
}
