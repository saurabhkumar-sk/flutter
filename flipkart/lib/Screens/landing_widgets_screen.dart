import 'package:flutter/material.dart';

class BodyImages extends StatelessWidget {
  const BodyImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 74,
          width: 90,
          child: Row(
            children: [
              Image.asset('assets/images/categories.png'),
              Image.asset('assets/images/offerzone.png'),
              Image.asset('assets/images/mobile.jpg'),
              Image.asset('assets/images/fashion.png'),
              Image.asset('assets/images/electronics.png'),
            ],
          ),
        ),
        Image.network(
            "https://rukminim2.flixcart.com/fk-p-flap/1100/500/image/97f24748652e61ae.png?q=20"),
        Row(
          children: [
            SizedBox(
              height: 140,
              width: 145,
              child: Image.network(
                  "https://rukminim2.flixcart.com/fk-p-flap/263/280/image/7f7ed951d79738e3.png?q=60"),
            ),
            const ImageAssets(src: "assets/images/mattresses.jpg"),
            const ImageAssets(src: "assets/images/mattresses.jpg"),
          ],
        ),
      ],
    );
  }
}

//landing widget screen asssertimages custon widget.
class ImageAssets extends StatelessWidget {
  final String src;
  final double? height;
  final double? width;

  const ImageAssets({super.key, required this.src, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      src,
      height: 150,
      width: 120,
    );
  }
}
