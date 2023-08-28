import 'package:flutter/material.dart';

class Fittedbox extends StatelessWidget {
  const Fittedbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: const Color.fromARGB(255, 56, 56, 55),
          // borderRadius: BorderRadius.circular(100),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.limeAccent,
                borderRadius: BorderRadius.circular(600),
                border: Border.all(color: Colors.black)),
            // height: 100,
            // width: 100,
            child: FittedBox(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.hardEdge,
              child: SizedBox(
                  height: 20,
                  width: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: Image.asset("assets/images/avatar3.jpg"),
                  )),
              // fit: BoxFit.fill,
              // child: Container(
              //   height: 100,
              //   width: 100,
              // decoration: BoxDecoration(
              //     color: Colors.limeAccent,
              //     border: Border.all(color: Colors.black)),
            ),
          ),
        ),
      ),
      // ),
    );
  }
}
