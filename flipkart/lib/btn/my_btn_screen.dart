import 'package:flutter/material.dart';
import 'package:my_first_app/btn/apply_btn.dart';
import 'package:my_first_app/btn/my_custon_btn.dart';

class MyButtons extends StatelessWidget {
  final double stroke;
  const MyButtons({super.key, this.stroke = 4});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: CustomBtn(
              text: "My Button",
              fontSize: 20,
              stroke: 2,
              strokeColors: [
                Color.fromRGBO(255, 255, 255, 0.1),
                Color.fromRGBO(255, 255, 255, 0.1),
              ],
              colors: [
                Color.fromRGBO(39, 38, 38, 1),
                Color.fromRGBO(29, 29, 29, 1),
              ],
              fontColor: Colors.white,
            ),
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ApplyButton(),
                      ));
                },
                child: Container(
                  height: 84,
                  width: 84,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(244, 54, 74, 96),
                    ),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(91, 255, 226, 0.20),
                        Color.fromRGBO(94, 100, 255, 0.20),
                      ],
                    ),
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 26, 0, 0),
                  child: Image.asset("assets/images/Vector  color.png"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
