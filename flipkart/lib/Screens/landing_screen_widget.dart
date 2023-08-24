import 'package:flutter/material.dart';
import 'package:my_first_app/btn/apply_btn.dart';

class LandingScreenWidget extends StatelessWidget {
  const LandingScreenWidget({
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
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ApplyButton()),
            );
          },
          child: Image.network(
              "https://rukminim2.flixcart.com/fk-p-flap/1100/500/image/97f24748652e61ae.png?q=20"),
        ),
        const Row(
          children: [
            ImageAssets(src: "assets/images/mattresses.jpg"),
            ImageAssets(src: "assets/images/mattresses.jpg"),
            ImageAssets(src: "assets/images/mattresses.jpg"),
            ImageAssets(src: "assets/images/mattresses.jpg"),
            ImageAssets(src: "assets/images/mattresses.jpg"),
          ],
        ),
        Row(children: [
          Image.network(
            "https://rukminim1.flixcart.com/image/240/240/ktketu80/mobile/6/n/d/iphone-13-mlpg3hn-a-apple-original-imag6vpyghayhhrh.jpeg?q=60",
            height: 100,
            width: 100,
          ),
        ]),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            " Mobile",
          ),
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
      height: 83,
      // width: 90,
    );
  }
}
