import 'package:flutter/material.dart';
import 'package:my_first_app/components.dart/app_dra_custom.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          AppBar(
            // automaticallyImplyLeading: false, //used for remove menu icon

            leading: const Icon(Icons.account_circle_sharp),
            // ignore: prefer_const_constructors
            title: const Text(
              'Login & Signup',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
            actions: [
              Image.asset(
                'assets/images/Flipkart-logo.png',
                height: 40,
                width: 70,
              ),
            ],
          ),
          const Row(
            children: [
              ImageFrame(
                  src:
                      "https://rukminim2.flixcart.com/www/100/14/promos/05/07/2019/37c19766-0af6-45c8-866a-720adfa534e2.png?q=80"),
              Text("My Account")
            ],
          ),
          const Row(
            children: [
              ImageFrame(
                  src:
                      "https://rukminim2.flixcart.com/www/300/42/promos/11/07/2018/70e5346e-fce4-4718-8e56-27be8492faa5.png?q=40"),
              Text("Flipkart Plus Zone"),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              ImageFrame(
                src:
                    "https://rukminim2.flixcart.com/www/300/42/promos/13/11/2019/d19caf2b-e593-4e6b-93e5-a6c388210736.png?q=40",
              ),
              Text("All Categories")
            ],
          ),
          const Row(
            children: [
              ImageFrame(
                src:
                    "https://rukminim2.flixcart.com/www/300/42/promos/26/01/2022/4495e6c3-7a67-4e74-b754-31aa3bd64272.png?q=40",
              ),
              Text("Trending Store")
            ],
          ),
          const Row(
            children: [
              ImageFrame(
                src:
                    "https://rukminim2.flixcart.com/www/300/42/promos/15/06/2020/3c2eff2c-685f-4002-b3c9-d6942563af76.jpg?q=40",
              ),
              Text("More on Flipkart")
            ],
          ),
          const Divider(),
          const Row(
            children: [
              ImageFrame(
                src:
                    "https://rukminim2.flixcart.com/www/300/42/promos/01/08/2019/23d1528b-d57d-440e-a21f-f374f518b6ed.png?q=40",
              ),
              Text("Choose Language")
            ],
          ),
          const Divider(),
          const Row(
            children: [
              ImageFrame(
                src:
                    "https://rukminim2.flixcart.com/www/300/42/promos/08/04/2016/a12880b1-9c2b-4b4b-9029-31ba9ff666bf.png?q=40",
              ),
              Text("Offfer Zone")
            ],
          ),
          const Row(
            children: [
              ImageFrame(
                src:
                    "https://rukminim2.flixcart.com/www/300/42/promos/18/01/2019/c79d21c6-b201-42a7-b37c-6405c6c4fbf5.png?q=40",
              ),
              Text("Sell on Flipkart")
            ],
          ),
          const Divider(),
          const Row(
            children: [
              ImageFrame(
                src:
                    "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/b7a79d1a-e088-4c4b-951f-9b8214719cc9.png?q=40",
              ),
              Text("My Orders")
            ],
          ),
          const Row(
            children: [
              ImageFrame(
                src:
                    "https://rukminim2.flixcart.com/www/300/42/promos/31/08/2016/3afaefd4-3961-4cac-921c-b9517c96ad47.png?q=40",
              ),
              Text("Coupons")
            ],
          ),
          const Row(
            children: [
              ImageFrame(
                src:
                    "https://rukminim2.flixcart.com/www/100/14/promos/10/03/2017/920f4fcd-8977-43a9-9014-abcad558de8d.png?q=80",
              ),
              Text("My Cart")
            ],
          ),
          const Row(
            children: [
              ImageFrame(
                src:
                    "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/1f81361d-9a8e-494a-bd15-6d647c9bd8a7.png?q=40",
              ),
              Text("My Wishlist")
            ],
          ),
          const Row(
            children: [
              ImageFrame(
                src:
                    "https://rukminim2.flixcart.com/www/300/42/promos/07/04/2016/c35cca9e-2d7a-4583-9770-32a97ddf1c9b.png?q=40",
              ),
              Text("My Account")
            ],
          ),
          const Row(
            children: [
              ImageFrame(
                src:
                    "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/f93182c9-5b3e-4f06-950d-c41745611f00.png?q=40",
              ),
              Text("My Notification")
            ],
          ),
          const Divider(),
          const Row(
            children: [
              TextDrawer(text: "Notification Perference"),
            ],
          ),
          const Row(
            children: [
              TextDrawer(text: "Help Center"),
            ],
          ),
          const Row(
            children: [
              TextDrawer(text: "Legal"),
            ],
          )
        ],
      ),
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


































//          const  AppdrawerCmponents(),
//           Container(
//             margin: const EdgeInsets.fromLTRB(0, 0.19, 0, 0),
//             height: 125,
//             width: double.infinity,
//             color: Colors.white,
//             child: const Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('\n     🪟     All Categories\n'),
//                 Text('     🏦     Trending Stores🆕\n'),
//                 Text('     🪙     More on Flipkart'),
//               ],
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.fromLTRB(0, 0.19, 0, 0),
//             height: 55,
//             width: double.infinity,
//             color: Colors.white,
//             child: const Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('\n     🇮🇳     Choose Language'),
//               ],
//             ),
//           ),
//           Container(
//             height: 80,
//             margin: const EdgeInsets.fromLTRB(0, 0.19, 0, 0),
//             width: double.infinity,
//             color: Colors.white,
//             child: const Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('     🎫     Offer Zone\n'),
//                 Text('     👜     Sell on Flipkart\n'),
//               ],
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.fromLTRB(0, 0.19, 0, 0),
//             height: 250,
//             width: double.infinity,
//             color: Colors.white,
//             child: const Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('\n     📦     My Orders\n'),
//                 Text('     🎫     Coupons\n'),
//                 Text('     🛒     My Cart\n'),
//                 Text('     ❤︎     My Wishlist\n'),
//                 Text('     👩🏻     My Account\n'),
//                 Text('     🔔     My Notofications'),
//               ],
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.fromLTRB(0, 0.19, 0, 0),
//             height: 81,
//             width: double.infinity,
//             color: Colors.white,
//             child: const Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('      Help Center\n'),
//                 Text('      Legal'),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class AppdrawerCmponents extends StatelessWidget {
//   const AppdrawerCmponents({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 65,
//       width: double.infinity,
//       color: Colors.white,
//       child: const Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text('     🪙     SuperCoin Zone\n'),
//           Text('     ♻️      Flipkart Plus Zone'),
//         ],
//       ),
//     );
//   }
// }
