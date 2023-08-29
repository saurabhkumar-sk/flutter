import 'package:flutter/material.dart';

//<<*******************************MediaQuary************************>>
// class MediaQuaryWrapTableScreen extends StatelessWidget {
//   const MediaQuaryWrapTableScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "MediaQuary",
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             // height: 20,
//             width: MediaQuery.of(context).size.width * 1 / 2,
//             decoration: const BoxDecoration(color: Colors.amber),
//           ),
//           Container(
//             // height: MediaQuery.of(context).size.width * 3,
//             width: MediaQuery.of(context).size.width * 0.5,
//             decoration: const BoxDecoration(color: Colors.deepPurpleAccent),
//           ),
//         ],
//       ),
//     );
//   }
// }

// >>*******************************************************************************************************

//   return Scaffold(
//     body: OrientationBuilder(builder: (context, orientation) {
//       if (orientation == Orientation.portrait) {
//         var _mediaQuary;
//         return portaitWidget(_mediaQuary.size);
//       } else {
//         var _mediaQuary;
//         return landscapeWidget(_mediaQuary.size);
//       }
//     }),
//   );
// }

//   Widget portaitWidget(Size size) {
//     return Container(
//       width: size.width * 0.8,
//       height: size.height * 0.8,
//       decoration: BoxDecoration(color: Colors.amber),
//     );
//   }

//   Widget landscapeWidget(Size size) {
//     return Container(
//       width: size.width * 0.8,
//       height: size.height * 0.8,
//       decoration: BoxDecoration(color: Colors.amber),
//     );
//   }
// }

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// class Home extends StatelessWidget {
//   var size, height, width;

//   Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // getting the size of the window
//     size = MediaQuery.of(context).size;
//     height = size.height;
//     width = size.width;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Mediaquary"),
//         backgroundColor: Colors.green,
//       ),
//       body: Container(
//         color: Colors.yellow,
//         height: height / 2, //half of the height size
//         width: width / 2, //half of the width size
//       ),
//     );
//   }
// }

//*************************************Wrap**********************************/

// class WrapWidgetScreen extends StatelessWidget {
//   const WrapWidgetScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//         body: SingleChildScrollView(
//       child: Wrap(
//         // verticalDirection: VerticalDirection.up,
//         // crossAxisAlignment: WrapCrossAlignment.end,
//         // alignment: WrapAlignment.spaceAround,
//         // direction: Axis.vertical,
//         spacing: 10,
//         // runAlignment: WrapAlignment.center,
//         runSpacing: 50,
//         children: [
//           Text("data124  "),
//           Text("data   "),
//           Text("data134   "),
//           Text("data32trf4w   "),
//           Text("data245t43   "),
//           Text("data2qtr   "),
//           Text("data34qt   "),
//           Text("dataqt33434qt   "),
//           Text("data3qt      "),
//           Text("data3qt   "),
//           Text("data    "),
//           Text("data3q4t "),
//           Text("data3q    "),
//           Text("daqwtqteegefsdme;lgrta   "),
//           Text("dakerwpkta   "),
//           Text("da;legkrta"),
//           Text("darewtkta"),
//           Text("dpoqitiata"),
//           Text("dataqt33434qt   "),
//           // Text("data3qt      "),
//           // Text("data3qt   "),
//           // Text("data    "),
//           Text("data3q4t "),
//           Text("data3q    "),
//           Text("daqwtqteegefsdme;lgrta   "),
//           Text("dakerwpkta   "),
//           Text("da;legkrta"),
//           Text("darewtkta"),
//           Text("dpoqitiata"),
//           Text("dataqt33434qt   "),
//           Text("data3qt      "),
//           Text("data3qt   "),
//           Text("data    "),
//           // Text("data3q4t "),
//           // Text("data3q    "),
//           // Text("daqwtqteegefsdme;lgrta   "),
//           // Text("dakerwpkta   "),
//           // Text("da;legkrta"),
//           Text("darewtkta"),
//           Text("dpoqitiata"),
//         ],
//       ),
//     ));
//   }
// }

//*****************************************Table*********************************************/

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.amber,
          child: Table(
            // defaultColumnWidth: const FixedColumnWidth(60),
            // textBaseline: TextBaseline.ideographic,
            // textDirection: TextDirection.rtl,
            // defaultVerticalAlignment: TableCellVerticalAlignment.top,
            border: TableBorder.all(),
            columnWidths: const {
              1: FixedColumnWidth(50),
              3: FlexColumnWidth(2)
            },
            // defaultColumnWidth: FixedColumnWidth(50),
            children: const [
              TableRow(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 50, 189, 236)),
                children: [
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                ],
              ),
              TableRow(
                children: [
                  Text('data2'),
                  Text('data2'),
                  Text('data2'),
                  Text('data2'),
                ],
              ),
              TableRow(
                children: [
                  Text('data2'),
                  Text('data2'),
                  Text('data2'),
                  Text('data2'),
                ],
              ),
              TableRow(
                children: [
                  Text('data2'),
                  Text('data2'),
                  Text('data2'),
                  Text('data2'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
