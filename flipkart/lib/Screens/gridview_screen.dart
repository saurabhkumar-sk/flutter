import 'package:flutter/material.dart';
import 'package:my_first_app/models/users_image.dart';
import 'package:my_first_app/utils/utils.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  User? user;

  List<Map<String, dynamic>> myList = [];
  bool loader = false;

  int myLimit = 20;
  int myOffset = 0;
  bool pageinate = true;

  Future<void> getList({int offset = 0, int limit = 20}) async {
    if (!pageinate) {
      return;
    }
    setState(() {
      loader = true;
    });
    await getData(offset: myOffset, limit: myLimit).then((value) {
      myList += value;
      myOffset = myOffset + 20;
      myLimit = myLimit + 20;

      if (value.length < 20) pageinate = false;

      loader = false;
      setState(() {});
    });
  }

  Future<List<Map<String, dynamic>>> getData({
    int limit = 20,
    int offset = 0,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    // final list = user.getRange(offset, limit).toList();
    await Future.delayed(const Duration(seconds: 2));
    return  await Future.delayed(const Duration(seconds: 2));
  }

  @override
  void initState() {
    getList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GridViewBuilder',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: loader
          ? const Center(child: CircularProgressIndicator())
          : NotificationListener(
              onNotification: (notification) =>
                  Utils.scrollNotifier(notification, () {
                getList(offset: myOffset);
              }),
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemCount: myList.length + (loader ? 1 : 0),
                  itemBuilder: (context, index) {
                    return Image.network(
                      user!.downloadUrl,
                    );
                  }),
            ),
    );
  }
}

// class GridViewScreen extends StatelessWidget {
//   const GridViewScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text(
//           'GridViewBuilder',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//       body: GridView.builder(
//         physics: const BouncingScrollPhysics(),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           crossAxisSpacing: 5,
//           mainAxisSpacing: 5,
//         ),
//         // itemCount: myimages.length,
//         itemBuilder: (context, index) {
//           return Image.network(
//             myimages[index],
//             fit: BoxFit.cover,
//           );
//         },
//       ),
//     );
//   }
// }

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
