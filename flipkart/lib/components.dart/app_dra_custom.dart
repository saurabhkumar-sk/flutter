import 'package:flutter/material.dart';

class ImageFrame extends StatelessWidget {
  final String src;
  final Color colors;
  final String? text;
  final double? height;
  final double? width;
  final Color backgroundcolor;
  final double? padding;
  final double? margin;

  const ImageFrame({
    super.key,
    required this.src,
    this.text,
    this.height,
    this.width,
    this.backgroundcolor = Colors.white,
    this.padding,
    this.margin,
    this.colors = Colors.white,
  });

//network image
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 9, 25, 3),
      child: Image.network(
        src,
        height: 18,
        width: 18,
      ),
    );
  }
}

//  text custon
class TextDrawer extends StatelessWidget {
  final String text;
  const TextDrawer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, top: 10),
      child: Text(
        text,
      ),
    );
  }
}
