import 'package:flutter/material.dart';

//custom button widget code from here
class CustomBtn extends StatelessWidget {
  final String text;
  final double stroke;
  final List<Color> colors;
  final List<Color> strokeColors;
  final double fontSize;
  final Color fontColor;
  final FontWeight fontWeight;
  final bool glow;
  final Color glowColor;
  final double glowRadius;
  final double border;

  // Constructor
  const CustomBtn(
      {super.key,
      required this.text,
      this.stroke = 4,
      this.colors = const [Colors.blue, Colors.red],
      this.strokeColors = const [Colors.blue, Colors.red],
      required this.fontSize,
      this.fontColor = Colors.black,
      this.fontWeight = FontWeight.w500,
      this.glow = false,
      this.glowColor = Colors.yellow,
      this.glowRadius = 12.0,
      this.border = 10});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      GestureDetector(
        onTap: (() {}),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: stroke, vertical: stroke),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: strokeColors),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              boxShadow: [
                if (glow)
                  BoxShadow(
                    color: glowColor,
                    blurRadius: glowRadius,
                    spreadRadius: 0.0,
                  )
              ]),

          // innerButtonLayer
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: colors),
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: fontSize, fontWeight: fontWeight, color: fontColor),
            ),
          ),
        ),
      ),
    ]);
  }
}
