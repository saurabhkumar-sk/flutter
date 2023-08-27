import 'package:flutter/material.dart';
import 'package:my_first_app/utils/url_list.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  // get index => 13;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            // automaticallyImplyLeading: false, //used to remove menu icon

            leading: const Icon(Icons.account_circle_sharp),
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
          Column(
            children: List.generate(
              myList.length,
              (index) => Column(
                children: [
                  if ([
                    2,
                    5,
                    6,
                    8,
                  ].contains(index))
                    const Divider(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(
                          myList[index]['src'],
                          height: 20,
                          width: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: Text(
                            myList[index]['text'].toString(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              textList.length,
              (index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                child: Text(textList[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



















 // if (index == 2 &&
                    //     index == 5 &&
                    //     index == 6 &&
                    //     index == 8 &&
                    //     index == 14)
                    //   Divider(),






























         
          //   const Divider(),
          //   const AppDrawerImages(
          //    
          //   ),
          //   const AppDrawerImages(
          //    
          //   ),
          //   const AppDrawerImages(
          //     
          //   ),
          //   const AppDrawerImages(
          //    
          //   ),
          //   const Divider(),
            // const AppDrawerImages(
          //     src:
          //         "https://rukminim2.flixcart.com/www/300/42/promos/08/04/2016/a12880b1-9c2b-4b4b-9029-31ba9ff666bf.png?q=40",
          //     text: ("Offfer Zone"),
          //   ),
          //   const AppDrawerImages(
          //     src:
          //         "https://rukminim2.flixcart.com/www/300/42/promos/18/01/2019/c79d21c6-b201-42a7-b37c-6405c6c4fbf5.png?q=40",
          //     text: ("Sell on Flipkart"),
          //   ),
          //   const AppDrawerImages(
          //     src:
          //         "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/b7a79d1a-e088-4c4b-951f-9b8214719cc9.png?q=40",
          //     text: ("My Orders"),
          //   ),
          //   const AppDrawerImages(
          //     src:
          //         "https://rukminim2.flixcart.com/www/300/42/promos/31/08/2016/3afaefd4-3961-4cac-921c-b9517c96ad47.png?q=40",
          //     text: ("Coupons"),
          //   ),
          //   const AppDrawerImages(
          //     src:
          //         "https://rukminim2.flixcart.com/www/100/14/promos/10/03/2017/920f4fcd-8977-43a9-9014-abcad558de8d.png?q=80",
          //     text: ("My Cart"),
          //   ),
          //   const AppDrawerImages(
          //     src:
          //         "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/1f81361d-9a8e-494a-bd15-6d647c9bd8a7.png?q=40",
          //     text: ("My Wishlist"),
          //   ),
          //   const AppDrawerImages(
          //     src:
          //         "https://rukminim2.flixcart.com/www/300/42/promos/07/04/2016/c35cca9e-2d7a-4583-9770-32a97ddf1c9b.png?q=40",
          //     text: ("My Account"),
          //   ),
          //   const AppDrawerImages(
          //     src:
          //         "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/f93182c9-5b3e-4f06-950d-c41745611f00.png?q=40",
          //     text: ("My Notification"),
          //   ),
          //   const Divider(),
          //   const TextDrawer(text: "Notification Perference"),
          //   const TextDrawer(text: "Help Center"),
//           //   const TextDrawer(text: "Legal")
//         ],
//       ),
//     );
    
//   }
// }
