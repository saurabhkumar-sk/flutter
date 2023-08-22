import 'package:flutter/material.dart';
import 'package:my_first_app/btn/my_btn.dart';

class Button2 extends StatelessWidget {
  const Button2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: CustomBtn(
            text: "My Button",
            fontSize: 20,
            stroke: 2,
            strokeColors: const [Colors.red, Colors.yellow],
            colors: const [
              Color.fromRGBO(41, 41, 41, 1),
              Color.fromRGBO(29, 29, 29, 1),
            ],
            fontColor: Colors.white,
          ),
        ));
  }
}
