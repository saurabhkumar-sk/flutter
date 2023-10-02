import 'package:flutter/material.dart';

class CustomPaintScreen extends StatelessWidget {
  const CustomPaintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Painter Screen',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.white,
          child: CustomPaint(
            painter: MyPainter(),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;
//Line Draw
    // final paint1 = Paint()
    //   ..color = Colors.amber
    //   ..strokeWidth = 3;

    // canvas.drawLine(
    //   Offset(size.width * 0.1, size.height / 2),
    //   Offset(size.width * 0.9, size.height / 2),
    //   paint,
    //   // paint1,
    // );

    //Rectangle
//     final rect = Rect.fromPoints(
//       Offset(size.width * 0.1, size.height * 0.1),
//       Offset(size.width * 0.9, size.height * 0.9),
//     );
//     //
//     final rect1 = Rect.fromCenter(
//       center: Offset(
//         size.width / 2,
//         size.height / 2,
//       ),
//       width: 100,
//       height: 100,
//     );
// //
//     final rect2 = Rect.fromCircle(
//       center: Offset(
//         size.width / 2,
//         size.height / 2,
//       ),
//       radius: 50,
//     );
// //
//     const rect3 = Rect.fromLTRB(50, 50, 100, 100);
// //

//     const rect4 = Rect.fromLTWH(50, 50, 50, 50);

    // canvas.drawRect(rect4, paint);

    ///➡️➡️Draw circle
    final center1 = Offset(size.width * 0.4, size.height * 0.4);
    final center2 = Offset(size.width * 0.6, size.height * 0.4);
    final center3 = Offset(size.width * 0.5, size.height * 0.6);

    //center circle
    // final center1 = Offset(size.width * 0.3, size.height / 2);
    // final center2 = Offset(size.width * 0.6, size.height / 2);
    // final center3 = Offset(size.width * 0.45, size.height * 0.5);

    canvas.drawCircle(center1, size.width * .2, paint);
    canvas.drawCircle(center2, size.width * .2, paint);
    canvas.drawCircle(center3, size.width * .2, paint);
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(MyPainter oldDelegate) => false;
}
