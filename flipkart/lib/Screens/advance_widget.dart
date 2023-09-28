//Vertical Divider , IntrinsicHeight-Intrinsicwidth, ClipOval , ClipRect, ClipRRect, Opacity , Backdropfilter, Transform.

import 'dart:math';

import 'package:flutter/material.dart';

class AdvanceWidgetScrreen extends StatefulWidget {
  const AdvanceWidgetScrreen({super.key});

  @override
  State<AdvanceWidgetScrreen> createState() => _AdvanceWidgetScrreenState();
}

class _AdvanceWidgetScrreenState extends State<AdvanceWidgetScrreen> {
  bool scale = false;

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
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
              height: 25,
            ),
            ClipOval(
              child: Container(
                height: 100,
                width: 150,
                color: Colors.cyan[200],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
                topLeft: Radius.circular(50),
              ),
              child: Container(
                height: 100,
                width: 150,
                color: Colors.cyan,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Opacity(
              opacity: 1,
              child: ClipRect(
                child: Image.network('https://picsum.photos/250?image'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // BackdropFilter(
            //   filter: ImageFilter.blur(sigmaX: 1, sigmaY: 2),
            //   child: Image.network('https://picsum.photos/250?image=1'),
            // ),
            // const SizedBox(
            //   height: 15,
            // ),
            Transform.scale(
              // scaleX: 2,
              scale: scale ? 2 : 1,
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.network('https://picsum.photos/250?image=30'),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Transform.translate(
              offset: scale ? const Offset(50, 100) : Offset.zero,
              child: Image.network('https://picsum.photos/250?image=15'),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  scale = !scale;
                });
              },
              child: const Icon(Icons.transform),
            ),
            const SizedBox(
              height: 80,
            ),
            Transform.rotate(
              angle: scale ? pi / 4 : 0,
              child: Image.network('https://picsum.photos/250?image=25'),
            ),
            const SizedBox(
              height: 50,
            ),
            Transform.flip(
              flipX: scale ? true : false,
              // flipY: true,
              // origin: Offset(15, 20),
              // filterQuality: FilterQuality.high,
              // transformHitTests: true,
              child: Image.network('https://picsum.photos/250?image=45'),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
