import 'package:flutter/material.dart';

List<Color> mycolors = [
  // Colors.black,
  Colors.red,
  Colors.green,
  Colors.brown,
  Colors.black,
  Colors.red,
  Colors.green,
  Colors.brown,
  Colors.black,
  Colors.red,
  Colors.green,
  Colors.brown,
];
List<String> myimages = [
  'https://source.unsplash.com/random/900×700/?fruit',
  'https://source.unsplash.com/featured/300x202',
  'https://source.unsplash.com/1600x900/?beach',
  "https://picsum.photos/200/300?a",
  'https://source.unsplash.com/random/900×700/?fruit',
  'https://picsum.photos/200/300?grayscale',
  'https://source.unsplash.com/random/900×700/?fruit',
  'https://source.unsplash.com/random?blue',
  'https://source.unsplash.com/random/900×700/?fruit',
  'https://source.unsplash.com/featured/300x202',
  'https://source.unsplash.com/random',
  'https://picsum.photos/200/300?grayscale',
  'https://source.unsplash.com/random/900×700/?fruit',
  'https://source.unsplash.com/random?blue',
  'https://source.unsplash.com/random/900×700/?fruit',
  'https://picsum.photos/200/300?grayscale',
  'https://source.unsplash.com/featured/300x202',
  'https://source.unsplash.com/random',
  "https://picsum.photos/200/300?a",
  'https://source.unsplash.com/random/900×700/?fruit',
  'https://source.unsplash.com/random?blue',
  'https://picsum.photos/200/300?grayscale',
  'https://source.unsplash.com/random/900×700/?fruit',
  'https://source.unsplash.com/featured/300x202',
  'https://source.unsplash.com/random',
  'https://source.unsplash.com/random/900×700/?fruit',
  'https://picsum.photos/200/300?grayscale',
  'https://source.unsplash.com/random/900×700/?fruit',
  'https://source.unsplash.com/random?blue',
];

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'GridViewBuilder',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: myimages.length,
        itemBuilder: (context, index) {
          return Image.network(
            myimages[index],
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}

//******************GridView*****************************************/

// import 'package:flutter/material.dart';

// class GridViewScreen extends StatelessWidget {
//   const GridViewScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'GridView',
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: GridView(
//         // scrollDirection: Axis.horizontal,
//         // reverse: true,
//         // controller: ScrollController(initialScrollOffset: 12),
//         // primary: false,
//         // physics: BouncingScrollPhysics(),
//         // shrinkWrap: true,
//         padding: const EdgeInsets.all(20),

//         /// clipBehavior: Clip.antiAliasWithSaveLayer,
//         /// keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
//         /// restorationId: AutofillHints.addressCity,

//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 20,
//           childAspectRatio: 1 / 2,
//           // mainAxisExtent: 200,
//         ),
//         children: [
//           Image.network(
//             'https://source.unsplash.com/random/900×700/?fruit',
//             fit: BoxFit.fill,
//           ),
//           Container(
//             color: Colors.red,
//             child: Image.network(
//               'https://source.unsplash.com/featured/300x201',
//               fit: BoxFit.fill,
//             ),
//           ),
//           Container(
//             color: Colors.green,
//           ),
//           Container(
//             color: Colors.yellow,
//           ),
//           Container(
//             color: Colors.brown,
//           ),
//           Image.network(
//             'https://source.unsplash.com/random/900×700/?fruit',
//             // color: Colors.amber,
//             fit: BoxFit.fill,
//           ),
//           Image.network(
//             'https://source.unsplash.com/featured/300x202',
//             fit: BoxFit.fill,
//           ),
//           Image.network(
//             'https://source.unsplash.com/featured/300x201t',
//             fit: BoxFit.fill,
//           ),
//           Image.network(
//             'https://source.unsplash.com/featured/300x202',
//             fit: BoxFit.fill,
//           ),
//           Image.network(
//             'https://source.unsplash.com/random/900×700/?fruit',
//             fit: BoxFit.fill,
//           ),
//           Image.network(
//             'https://source.unsplash.com/random/900×700/?fruit',
//             fit: BoxFit.fill,
//           ),
//           Image.network(
//             'https://source.unsplash.com/featured/300x202',
//             fit: BoxFit.fill,
//           ),
//         ],
//       ),
//     );
//   }
// }
