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
            leading: const Icon(Icons.account_circle_sharp),
            title: const Text(
              'Login & Signup',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
            actions: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('assets/images/Flipkart-logo.png'),
              ),
            ],
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
            height: 125,
            width: double.infinity,
            color: Colors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\n     🪙     All Categories\n'),
                Text('     🪙     Trending Stores🆕\n'),
                Text('     🪙     More on Flipkart'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0.19, 0, 0),
            height: 55,
            width: double.infinity,
            color: Colors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\n     🪙     Choose Language'),
              ],
            ),
          ),
          Container(
            height: 80,
            margin: const EdgeInsets.fromLTRB(0, 0.19, 0, 0),
            width: double.infinity,
            color: Colors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('     🪙     Offer Zone\n'),
                Text('     🪙     Sell on Flipkart\n'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0.19, 0, 0),
            height: 250,
            width: double.infinity,
            color: Colors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\n     🪙   My Orders\n'),
                Text('     🪙    Coupons\n'),
                Text('     🪙    My Cart\n'),
                Text('     🪙     My Wishlist\n'),
                Text('     🪙     My Account\n'),
                Text('     🪙     My Notofications'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0.19, 0, 0),
            height: 81,
            width: double.infinity,
            color: Colors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('      Help Center\n'),
                Text('      Legal'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
