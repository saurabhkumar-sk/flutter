import 'package:flutter/material.dart';

class FlutterSatTest extends StatelessWidget {
  const FlutterSatTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            color: Colors.blue,
            alignment: Alignment.topCenter,
            width: double.infinity,
            height: 400.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Baseline(
                  baseline: 80,
                  baselineType: TextBaseline.alphabetic,
                  child: SizedBox(
                    height: 150,
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(100),
                          ),
                          border: Border.all(
                            width: 6,
                            color: Colors.white,
                          ),
                        ),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1559629819-638a8f0a4303?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tight(
                    const Size(300, 100),
                  ),
                  child: const Text(
                    textAlign: TextAlign.center,
                    "Hello my name is ajay, i love coding but i'm dont do it!",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      border: Border.all(
                        width: 6,
                        color: Colors.white,
                      ),
                      image: const DecorationImage(
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1559629819-638a8f0a4303?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80',
                        ),
                      ),
                      shape: BoxShape.circle),
                  // child: FittedBox(
                  //   alignment: Alignment.center,
                  //   fit: BoxFit.cover,
                  //   clipBehavior: Clip.hardEdge,
                  //   child:
                  // ),
                ),
              ],
            )),
      ),
    );
  }
}
