import 'package:flutter/material.dart';
// import 'dart:developer' as dev;

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Column(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            leading: const Icon(Icons.admin_panel_settings_sharp),
            title: const Text(
              'Login & Signup',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 16, 16, 16),
                  fontSize: 18),
            ),
          ),
          Container(
            height: 65,
            width: double.infinity,
            color: Colors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('     🪙     SuperCoin Zone\n'),
                Text('     🪙     Flipkart Plus Zone'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0.19, 0, 0),
            height: 120,
            width: double.infinity,
            color: Colors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\n     🪙     All Categories\n'),
                Text('     🪙     Trending Stores🆕\n'),
                Text('     🪙     Flipkart Plus Zone'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0.19, 0, 0),
            height: 40,
            width: double.infinity,
            color: Colors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('     🪙     Choose Language\n'),
              ],
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            color: Colors.lightBlueAccent,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('     🪙     Offer Zone\n'),
                Text('     🪙     Sell on Flipkart\n'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
