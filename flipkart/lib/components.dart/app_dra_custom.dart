import 'package:flutter/material.dart';

class AppDrawerImages extends StatelessWidget {
  final String src;

  final String text;
  final double? height;
  final double? width;
  final double? padding;

  const AppDrawerImages({
    super.key,
    required this.src,
    required this.text,
    this.height,
    this.width,
    this.padding,
  });

//network image
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 5, 18, 9),
      child: Row(
        children: [
          Image.network(
            src,
            height: 18,
            width: 18,
          ),
          const SizedBox(
            width: 25,
          ),
          Text(
            text,
          ),
        ],
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
