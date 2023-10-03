import 'package:flutter/material.dart';

class AdvanceMaterialWidget extends StatelessWidget {
  const AdvanceMaterialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Widget'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Badge(
              label: Text('5'),
              child: Icon(
                Icons.shopping_cart,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
