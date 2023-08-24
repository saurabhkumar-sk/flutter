import 'package:flutter/material.dart';
import 'package:my_first_app/btn/my_custon_btn.dart';

class ApplyButton extends StatelessWidget {
  const ApplyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: CustomBtn(
            text: " APPLY",
            fontSize: 30,
            fontWeight: FontWeight.w900,
            stroke: 7,
            glow: true,
            strokeColors: [
              Color.fromRGBO(245, 249, 129, 1),
              Color.fromRGBO(174, 179, 13, 1),
            ],
            colors: [
              Color.fromRGBO(250, 254, 113, 1),
              Color.fromRGBO(250, 255, 110, 1),
              Color.fromRGBO(224, 231, 25, 1),
            ],
          ),
        ));
  }
}
