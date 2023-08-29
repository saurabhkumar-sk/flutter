import 'package:flutter/material.dart';

class BaseLineScreen extends StatelessWidget {
  const BaseLineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Container(
            color: Colors.amber,
            child: Center(
              child: Baseline(
                baseline: -50,
                baselineType: TextBaseline.alphabetic,
                child: Stack(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.redAccent),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      // child: Image.asset('assets/images/avatar3.jpg'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}




//*****************************AspectRatio****************************************/
// class AspectRatioScreen extends StatelessWidget {
//   const AspectRatioScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: AspectRatio(
//           // aspectRatio: 9 / 16,
//           aspectRatio: 4 / 4,
//           child: Container(
//               color: Colors.amber,
//               height: 50,
//               width: 50,
//               child: const Text("data")),
//         ),
//       ),
//     );
//   }
// }











//******************************Card**************************************** */

// class CardWeidget extends StatelessWidget {
//   const CardWeidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: Card(
//           elevation: 10,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text("           saurabh kumar            "),
//               Text("saurabh kumar "),
//               Text("saurabh kumar "),
//               Text("saurabh kumar "),
//               Text("saurabh kumar "),
//             ],
          
//           ),
//         ),
//       ),
//     );
//   }
// }
