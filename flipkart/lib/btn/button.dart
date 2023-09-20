import 'package:flutter/material.dart';
import 'package:my_first_app/btn/circle_btn_custom.dart';

class ButtonCircle extends StatelessWidget {
  const ButtonCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CustomBtns(
          colors: [
            Color.fromRGBO(100, 162, 255, 1),
            Color.fromRGBO(99, 104, 243, 1),
            // Color.fromRGBO(110, 115, 255, 1),
            Color.fromRGBO(88, 70, 240, 1),
            Color.fromRGBO(90, 80, 245, 1),
            Color.fromRGBO(92, 91, 250, 1),
            Color.fromRGBO(94, 100, 255, 1),
          ],
          border: 2,
          strokeColors: [Color.fromRGBO(255, 255, 255, 0.1)],
          // stroke: 10,
          glowRadius: 12,
        ),
      ),
    );
  }
}
