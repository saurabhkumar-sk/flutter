import 'dart:developer';

import 'package:flutter/material.dart';

class CallsTabBar extends StatelessWidget {
  const CallsTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log("Calls");
        },
        backgroundColor: const Color.fromRGBO(18, 140, 126, 2),
        child: const Icon(
          Icons.add_ic_call,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          const ListTile(
            iconColor: Colors.white,
            leading: CircleAvatar(
                backgroundColor: Colors.teal,
                // backgroundImage: AssetImage('assets/images/tony.jpg'),
                child: Icon(
                  Icons.link_outlined,
                  color: Colors.white,
                )),
            title: Text(
              "Create call link",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            subtitle: Text("Share a link for your WhatsApp call"),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  'Recent',
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                iconColor: Colors.white,
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // color: const Color.fromRGBO(18, 140, 126, 2),
                  ),
                  child: Stack(
                    // fit: StackFit.expand,
                    clipBehavior: Clip.none,
                    children: [
                      Image.asset(
                        'assets/images/avatar.png',
                      ),
                      const Positioned(
                        left: 5,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/avatar4.jpg'),
                        ),
                      ),
                      //  const  Icon(Icons.groups_2_outlined)
                    ],
                  ),
                ),
                title: const Text(
                  "Saurabh",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                subtitle: const Text(" ↙ Yesterday  00:00"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}









// SizedBox(
//           width: double.infinity,
//           height: 200,
//           child: ListView.builder(
//             itemCount: 2,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 iconColor: Colors.white,
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(
//                     chatList[index]['avatar'],
//                   ),
//                 ),
//                 title: Text(
//                   chatList[index]['name'].toString(),
//                   style: const TextStyle(fontSize: 16),
//                 ),
//                 subtitle: Text(
//                   chatListSubtitle[index]['time'],
//                 ),
//               );
//             },
//           ),
//         ),