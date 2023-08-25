import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Stack",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(height: 250, width: 250, color: Colors.amber),
                Container(height: 200, width: 200, color: Colors.red),
                Container(height: 150, width: 150, color: Colors.blue),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
