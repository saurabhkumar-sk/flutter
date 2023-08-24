import 'package:flutter/material.dart';
import 'package:my_first_app/Screens/stack_screen.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded"),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 800,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StackScreen(),
                      ));
                },
                child: const Text("Expanded ⏭️(Next >> Stack)"),
              ),
              const SizedBox(
                // height: 100,
                child: Row(
                  children: [
                    // Expanded(
                    //   flex: 2,
                    //   child: Image(
                    //     image: AssetImage("assets/images/mattresses.jpg"),
                    //   ),
                    // ),
                    // Expanded(
                    //   child: Image(
                    //     image: AssetImage(
                    //       "assets/images/mattresses.jpg",
                    //     ),
                    //   ),
                    // ),
                    // Expanded(
                    //   child: Image(
                    //     image: AssetImage(
                    //       "assets/images/mattresses.jpg",
                    //     ),
                    //   ),
                    // ),

                    // Expanded(
                    //   // flex: 2,
                    //   child: Container(
                    //     color: const Color.fromARGB(255, 32, 7, 255),
                    //   ),
                    // ),
                    // Expanded(
                    //   child: Container(
                    //     color: Color.fromARGB(255, 0, 255, 38),
                    //   ),
                    // ),
                    // Expanded(
                    //   // flex: 3,
                    //   child: Container(
                    //     color: const Color.fromARGB(255, 255, 7, 7),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Expanded(
                // flex: 2,
                child: Container(
                  color: const Color.fromARGB(255, 32, 7, 255),
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 0, 255, 38),
                ),
              ),
              Expanded(
                // flex: 3,
                child: Container(
                  color: const Color.fromARGB(255, 255, 7, 7),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
