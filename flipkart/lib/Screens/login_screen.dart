import 'package:flutter/material.dart';

class LogedInScerrn extends StatelessWidget {
  const LogedInScerrn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // automaticallyImplyLeading: true,
          ),
      // ignore: avoid_unnecessary_containers
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.amber,
          child: const Center(
            child: Text("Welcome to login screen",
                style: TextStyle(color: Colors.black)),
          ),
        ),
      ),
    );
  }
}
