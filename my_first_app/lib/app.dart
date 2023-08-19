import 'package:flutter/material.dart';
import 'dart:developer' as dev;

import 'package:my_first_app/Screens/login_screen.dart';
import 'package:my_first_app/Screens/signup_screen.dart';
import 'package:my_first_app/components.dart/app_drawer.dart';

class App extends StatelessWidget {
  const App({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     dev.log("Button Pressed", name: "Button");
      //   },
      // ),
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
      body: Center(
        child: Text(name),
      ),
    );
  }
}
