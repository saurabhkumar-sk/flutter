import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:my_first_app/Screens/login_screen.dart';
import 'package:my_first_app/Screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flipkart clone",
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),

      // color: Color.fromRGBO(241, 238, 238, 1),
      home: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: AppBar()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          dev.log("Button Pressed", name: "Button");
        },
      ),
      appBar: AppBar(
        // backgroundColor: const Color.fromRGBO(0, 200, 255, 1),
        // leading: IconButton(
        //   onPressed: () {
        //     ("Your Menu");
        //   },
        //   icon: const Icon(Icons.menu),
        // ),
        title: const Text(
          "Flipkart" '\n' "Explore Plus",
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.w900, color: Colors.white),
        ),
        // leadingWidth: 40,

        actions: [
          IconButton(
            onPressed: () {
              dev.log("Your items are added to cart", name: "Cart");
            },
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpScreen(),
                ),
              );
            },
            child: const Text(
              'Signup    ',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LogedInScerrn(),
                ),
              );
            },
            child: const Text(
              "Login  ",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ],

        // bottom: AppBar(
        //   title: Container(
        //     width: double.infinity,
        //     height: 40,
        //     color: Colors.white,
        //     child: const Center(
        //       child: TextField(
        //         decoration: InputDecoration(
        //             hintText: 'Search for something',
        //             prefixIcon: Icon(Icons.search),
        //             suffixIcon: Icon(Icons.camera_alt)),
        //       ),
        //     ),
        //   ),
        // ),
      ),
      body: const Center(child: Text('flipkart')),
    );
  }
}


























//========>>>>>>>>>>Flipkart Appbar clone


//import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Flipkart clone",
//       color: Colors.black,
//       home: Scaffold(
//         appBar: AppBar(
//           // backgroundColor: const Color.fromRGBO(0, 200, 255, 1),
//           leading: IconButton(
//             onPressed: () {
//               print("Your Menu");
//             },
//             icon: const Icon(Icons.menu),
//           ),
//           title: const Text(
//             "Flipkart" '\n' "Explore Plus",
//             style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900),
//           ),
//           leadingWidth: 40,

//           actions: [
//             IconButton(
//               onPressed: () {
//                 print("Your items are added to cart");
//               },
//               icon: const Icon(Icons.shopping_cart_outlined),
//             ),
//             IconButton(
//               onPressed: () {
//                 print("Signup Successfully");
//               },
//               icon: const Text("Signup"),
//             ),
//             IconButton(
//               onPressed: () {
//                 print("Welcome User");
//               },
//               icon: const Text('login'),
//             ),
//           ],

//           bottom: AppBar(
//             title: Container(
//               width: double.infinity,
//               height: 40,
//               color: Colors.white,
//               child: const Center(
//                 child: TextField(
//                   decoration: InputDecoration(
//                       hintText: 'Search for something',
//                       prefixIcon: Icon(Icons.search),
//                       suffixIcon: Icon(Icons.camera_alt)),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         body: const Center(child: Text('flipkart')),
//       ),
//     );
//   }
// }












//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>Amazon appbar clone

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     String name = "Saurabh";

//     int i = 1;

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "my first app",
//       theme: ThemeData(
//         useMaterial3: true,
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Color.fromARGB(255, 124, 196, 255),
//         ),
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           leading: const Icon(
//             Icons.menu,
//             color: Colors.white,
//           ),
//           leadingWidth: 18,
//           actions: [
//             Text(
//               "Sign in",
//               style: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//             Icon(
//               Icons.verified_user_outlined,
//               color: Colors.white,
//             ),

//             // Icon(
//             //   Icons.shopping_bag_outlined,
//             //   color: Colors.white,
//             // ),
//             IconButton(
//               onPressed: () {
//                 print(i++);
//               },
//               icon: Icon(
//                 Icons.shopping_bag_outlined,
//                 color: Colors.white,
//               ),
//             )
//           ],
//           backgroundColor: Color.fromARGB(255, 35, 47, 62),
//           title: const Text(
//             "MyAmazon",
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
//           ),
//         ),
//         body: Center(
//           child: Text(
//             name,
//           ),
//         ),
//       ),
//     );
//   }
// }

























// //===>2  theme, text, appBar




// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // // ignore: must_be_immutable
// // class MyApp extends StatelessWidget {
// //   String name = "Saurabh";
// //   MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       // debugShowCheckedModeBanner: false,
// //       title: "my first app",
// //       theme: ThemeData(
// //         useMaterial3: true,
// //         colorScheme: ColorScheme.fromSeed(
// //           seedColor: const Color.fromRGBO(15, 218, 218, 1),
// //         ),
// //       ),
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: const Text(
// //             'My App Bar',
// //             style: TextStyle(fontWeight: FontWeight.bold),
// //           ),
// //           backgroundColor: const Color.fromRGBO(250, 128, 14, 0.91),
// //           iconTheme: const IconThemeData(),
// //         ),
// //         body: Center(
// //           child: Text(
// //             // 'Hello!!!'
// //             name,
// //             style: const TextStyle(
// //                 color: Color(0xFFD3EE01),
// //                 fontWeight: FontWeight.w900,
// //                 fontSize: 30),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }







// //==>> 1



// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const Center(
// //     child: Text(
// //       'hello saurabh!',
// //       textDirection: TextDirection.ltr,
// //     ),
// //   ));
// // }
