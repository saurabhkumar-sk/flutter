import 'package:flutter/material.dart';
import 'package:my_first_app/utils/utils.dart';

class AdvanceMaterialWidget extends StatefulWidget {
  const AdvanceMaterialWidget({super.key});

  @override
  State<AdvanceMaterialWidget> createState() => _AdvanceMaterialWidgetState();
}

class _AdvanceMaterialWidgetState extends State<AdvanceMaterialWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Badge(
              label: Text('5'),
              child: Icon(
                Icons.shopping_cart,
                size: 40,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              Utils.showSnack('Product added');

              // ScaffoldMessenger.of(context).showSnackBar(
              //   SnackBar(

              //     // actionOverflowThreshold: 15,
              //     behavior: SnackBarBehavior.floating,
              //     action: SnackBarAction(

              //       label: 'ok',
              //       onPressed: () {},
              //     ),
              //     content: Text('data'),
              //   ),
              // );
            },
            icon: const Icon(
              Icons.shopping_cart_checkout_sharp,
            ),
          ),
        ],
      ),
    );
  }
}
