import 'package:flutter/material.dart';

class ClipperScreen extends StatelessWidget {
  const ClipperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clipper Screen '),
      ),
      body: Center(
        child: ClipPath(
          clipper: MyClipper(),
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    // path.lineTo(size.width / 2, size.height * .7);
    // path.arcToPoint(Offset(size.width * 2, size.height * .88),
    // radius: const Radius.circular(400));
    path.lineTo(size.width / 2, size.height * .5);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
