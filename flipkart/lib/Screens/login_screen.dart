import 'package:flutter/material.dart';
import 'package:my_first_app/btn/my_btn_screen.dart';

class LogedInScerrn extends StatelessWidget {
  const LogedInScerrn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => MyButtons,
        child: const Icon(Icons.arrow_circle_left_sharp),
      ),
      appBar: AppBar(
          // automaticallyImplyLeading: true,
          ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "LOGIN SCREEN",
              style: TextStyle(fontSize: 20, color: Colors.blueAccent),
            ),
          ),
          // Icon(
          //   Icons.navigate_next,
          //   color: Colors.cyanAccent,
          //   size: 100,
          // ),
        ],
      ),
    );
  }
}
