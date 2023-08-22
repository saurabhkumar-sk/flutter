import 'package:flutter/material.dart';
import 'package:my_first_app/Screens/button1.dart';

class LogedInScerrn extends StatelessWidget {
  const LogedInScerrn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => MyButtons,
      //   child: const Icon(Icons.arrow_circle_left_sharp),
      // ),
      appBar: AppBar(
          // automaticallyImplyLeading: true,
          ),
      // ignore: avoid_unnecessary_containers
      body: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyButtons(),
                ));
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Click on ",
                style: TextStyle(fontSize: 20, color: Colors.blueAccent),
              ),
              Center(
                child: Icon(
                  Icons.navigate_next,
                  color: Colors.cyanAccent,
                  size: 100,
                ),
              ),
            ],
          )
          // Center(
          //   child: Container(
          //     color: const Color.fromARGB(255, 181, 222, 208),
          //     height: 100,
          //     width: 100,
          //     child: const Icon(
          //       Icons.navigate_next,
          //       color: Colors.cyanAccent,
          //       size: 100,
          //     ),
          //   ),
          // ),
          ),
    );
  }
}
