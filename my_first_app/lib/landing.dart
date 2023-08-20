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
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text(
          "Flipkart" '\n' "Explore Plus",
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.w900, color: Colors.white),
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
      body: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 70,
            width: 70,
            child: Column(
              children: [
                Image.asset('assets/images/categories.png'),
                // Text('Categories'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 70,
            width: 70,
            color: Colors.white,
            child: Column(
              children: [
                Image.asset('assets/images/offerzone.png'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 70,
            width: 70,
            color: Colors.white,
            child: Column(
              children: [
                Image.asset('assets/images/mobile.jpg'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 70,
            width: 70,
            color: Colors.white,
            child: Column(
              children: [
                Image.asset('assets/images/fashion.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
