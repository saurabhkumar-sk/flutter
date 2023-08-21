import 'package:flutter/material.dart';
// import 'package:my_first_app/Screens/button.dart';
import 'dart:developer' as dev;

import 'package:my_first_app/Screens/login_screen.dart';
import 'package:my_first_app/Screens/signup_screen.dart';
import 'package:my_first_app/components.dart/app_drawer.dart';
import 'package:my_first_app/components.dart/body_widgets.dart';

class App extends StatelessWidget {
  const App({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: Column(
          children: [
            Image.network(
              "https://static-assets-web.flixcart.com/batman-returns/batman-returns/p/images/fk-explorePlus-c5de64.png",
              height: 90,
              width: 90,
            ),
          ],
        ),
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
        bottom: AppBar(
          automaticallyImplyLeading: false,
          title: Container(
            width: double.infinity,
            height: 40,
            color: Colors.white,
            child: const Center(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for Product, Brand and More',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  prefixIcon: Icon(Icons.search_sharp),
                  // suffixIcon: Icon(Icons.camera_alt),
                ),
              ),
            ),
          ),
        ),
      ),
      body: const BodyImages(),
      // endDrawer: MyButtons(),
    );
  }
}
