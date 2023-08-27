import 'package:flutter/material.dart';
import 'package:my_first_app/btn/apply_btn.dart';
import 'package:my_first_app/btn/my_custon_btn.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({
    super.key,
  });

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
          // Row(children: [Text("data")]),
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
                child: const CircleButton(),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // return coz

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 84,
        width: 84,
        padding: const EdgeInsets.symmetric(vertical: 50),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(91, 255, 226, 0.20),
                Color.fromRGBO(94, 100, 255, 0.20),
              ]),
          border: Border.all(
              width: 2, color: const Color.fromARGB(255, 27, 48, 65)),
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          boxShadow: const [
            BoxShadow(
              // color: Colors.black.withOpacity(0.2),
              spreadRadius: 10,
              blurRadius: 10,
              // offset: Offset(0, 3),
            ),
          ],
        ),
        // child: Center(
        //   // Adding the image
        //   child: Image.asset(
        //     "flipkart/assets/images/Vector  color.png",
        //     height: 40, // Adjust the height as needed
        //     width: 40, // Adjust the width as needed
        //   ),
        // ),
      ),
    );
  }
}





// import 'package:flutter/material.dart';
// import 'package:my_first_app/btn/apply_btn.dart';
// import 'package:my_first_app/btn/my_custon_btn.dart';

// class MyButtons extends StatelessWidget {
//   const MyButtons({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//       ),
//       backgroundColor: Colors.black,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Center(
//             child: CustomBtn(
//               text: "My Button",
//               fontSize: 20,
//               stroke: 2,
//               strokeColors: [
//                 Color.fromRGBO(255, 255, 255, 0.1),
//                 Color.fromRGBO(255, 255, 255, 0.1),
//               ],
//               colors: [
//                 Color.fromRGBO(39, 38, 38, 1),
//                 Color.fromRGBO(29, 29, 29, 1),
//               ],
//               fontColor: Colors.white,
//             ),
//           ),
//           // Row(children: [Text("data")]),
//           Column(
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const ApplyButton(),
//                       ));
//                 },
//                 child: const CircleButton(),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

// class CircleButton extends StatelessWidget {
//   const CircleButton({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     // return coz

//     return Padding(
//       padding: const EdgeInsets.only(top: 20),
//       child: Container(
//         height: 84,
//         width: 84,
//         padding: const EdgeInsets.symmetric(vertical: 50),
//         decoration: BoxDecoration(
//           gradient: const LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [
//                 Color.fromRGBO(91, 255, 226, 0.20),
//                 Color.fromRGBO(94, 100, 255, 0.20),
//               ]),
//           border: Border.all(
//               width: 2, color: const Color.fromARGB(255, 27, 48, 65)),
//           borderRadius: const BorderRadius.all(Radius.circular(50)),
//           boxShadow: const [
//             BoxShadow(
//               // color: Colors.black.withOpacity(0.2),
//               spreadRadius: 10,
//               blurRadius: 10,
//               // offset: Offset(0, 3),
//             ),
//           ],
//         ),
//         // child: Center(
//         //   // Adding the image
//         //   child: Image.asset(
//         //     "flipkart/assets/images/Vector  color.png",
//         //     height: 40, // Adjust the height as needed
//         //     width: 40, // Adjust the width as needed
//         //   ),
//         // ),
//       ),
//     );
//   }
// }
