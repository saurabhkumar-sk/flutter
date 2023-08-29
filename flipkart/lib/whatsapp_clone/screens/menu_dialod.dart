import 'package:flutter/material.dart';

class MenuDialog extends StatelessWidget {
  const MenuDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Dialog(
        child: Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "New group",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "New broadcast",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Linked Devices",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Starred message",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Payment",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Setting",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    ));
  }
}



// ListTile(
//   onTap: () {
//     showDialog(
//       context: context,
//       builder: (context) => FittedBox(
//         fit: BoxFit.cover,
//         child: Dialog(
//           clipBehavior: Clip.hardEdge,
//           child: Column(
//             children: [
//               Stack(
//                 alignment: Alignment.topRight,
//                 children: [
//                   Image.asset(
//                     chatList[index]['avatar'],
//                     height: 40,
//                     width: 50,
//                   ),
//                   IconButton(
//                     icon: Icon(Icons.chat), // Add the chat icon
//                     onPressed: () {
//                       // Add your chat icon onTap logic here
//                     },
//                   ),
//                   IconButton(
//                     icon: Icon(Icons.info), // Add the info icon
//                     onPressed: () {
//                       // Add your info icon onTap logic here
//                     },
//                   ),
//                 ],
//               ),
//               // Add other content to the dialog
//             ],
//           ),
//         ),
//       ),
//     );
//   },
// )
