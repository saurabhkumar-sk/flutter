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
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.black,
              height: 74,
              width: 90,
              child: Row(
                children: [
                  Image.asset('assets/images/categories.png'),
                  Image.asset('assets/images/offerzone.png'),
                  Image.asset('assets/images/mobile.jpg'),
                  Image.asset('assets/images/fashion.png'),
                  Image.asset('assets/images/electronics.png'),
                ],
              ),
            ),
            Image.network(
                "https://rukminim2.flixcart.com/fk-p-flap/1100/500/image/97f24748652e61ae.png?q=20"),
            Row(
              children: [
                SizedBox(
                  height: 110,
                  width: 105,
                  child: Image.network(
                      "https://rukminim2.flixcart.com/fk-p-flap/263/280/image/7f7ed951d79738e3.png?q=60"),
                ),
                const SizedBox(
                  height: 110,
                  width: 105,
                  child: Image(
                    image: AssetImage("assets/images/mattresses.jpg"),
                  ),
                ),
                const SizedBox(
                  height: 110,
                  width: 105,
                  child: Image(
                    image: AssetImage("assets/images/mattresses.jpg"),
                  ),
                ),
                const SizedBox(
                  height: 110,
                  width: 75,
                  child: Image(
                      image: NetworkImage(
                          "https://rukminim2.flixcart.com/fk-p-flap/263/280/image/99a49a626e9d43ae.png?q=60")),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
