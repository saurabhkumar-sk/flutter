//Vertical Divider , IntrinsicHeight-Intrinsicwidth, ClipOval , ClipRect, ClipRRect, Opacity , Backdropfilter, Transform.
import 'package:flutter/material.dart';

class AdvanceWidgetScrreen extends StatefulWidget {
  const AdvanceWidgetScrreen({super.key});

  @override
  State<AdvanceWidgetScrreen> createState() => _AdvanceWidgetScrreenState();
}

class _AdvanceWidgetScrreenState extends State<AdvanceWidgetScrreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Advance Widget',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'saurabh',
                ),
                VerticalDivider(
                  thickness: 5,
                ),
                Text(
                  'kumar',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          ClipOval(
            child: Container(
              height: 100,
              width: 150,
              color: Colors.cyan[100],
            ),
          )
        ],
      ),
    );
  }
}
