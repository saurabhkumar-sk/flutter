import 'package:flutter/material.dart';

//custom button widget code from here
class CustomBtns extends StatelessWidget {
  // final String text;
  // final Widget container;
  final double stroke;

  final List<Color> colors;
  final List<Color> strokeColors;
  // final double height;
  // final double width;
  // final double fontSize;
  final Color fontColor;
  final FontWeight fontWeight;
  final bool glow;
  final Color glowColor;
  final double glowRadius;
  final double border;
  final List<Color> borderColor;

//constructor

  const CustomBtns({
    super.key,
    // required this.text,
    // required this.container,
    this.stroke = 4,
    this.colors = const [Colors.blue, Colors.red],
    this.strokeColors = const [Colors.blue, Colors.red],
    // required this.height,
    // required this.width,
    // required this.fontSize,
    this.fontColor = Colors.black,
    this.fontWeight = FontWeight.w500,
    this.glow = false,
    this.glowColor = Colors.yellow,
    this.glowRadius = 12.0,
    this.border = 10,
    this.borderColor = const [Colors.blue, Colors.red],
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      // GestureDetector(
      //   onTap: (() {}),
      // child: Container(
      //   height: 84,
      //   width: 84,
      //   // padding: EdgeInsets.symmetric(horizontal: stroke, vertical: stroke),
      //   decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //           begin: Alignment.topCenter,
      //           end: Alignment.bottomCenter,
      //           colors: strokeColors),
      //       // borderRadius: const BorderRadius.all(Radius.circular(12)),
      //       boxShadow: [
      //         if (glow)
      //           BoxShadow(
      //             color: glowColor,
      //             blurRadius: glowRadius,
      //             spreadRadius: 0.0,
      //           )
      // ]
      // ),

      // innerButtonLayer
      Container(
          height: 84,
          width: 84,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromRGBO(94, 100, 255, 1),
              width: border,
            ),
            // border: Border.all(col width: border),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: colors,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            boxShadow: [
              if (glow)
                BoxShadow(
                  color: glowColor,
                  blurRadius: glowRadius,
                  spreadRadius: 0.0,
                )
            ],
          ),
          child: const Icon(
            Icons.add_circle_outline_rounded,
            color: Color.fromRGBO(100, 162, 255, 1),
          )
          // Text(
          //   text,
          //   style: TextStyle(
          //       fontSize: fontSize, fontWeight: fontWeight, color: fontColor),
          // ),
          ),
      // ),
      // ),
    ]);
  }
}
