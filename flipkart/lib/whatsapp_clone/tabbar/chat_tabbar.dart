import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_first_app/utils/url_list.dart';

class TextTabBar extends StatelessWidget {
  const TextTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log(
            "chat",
          );
        },
        backgroundColor: const Color.fromRGBO(18, 140, 126, 2),
        child: const Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
          itemCount: chatList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Row(
                children: [
                  Image.asset(
                    chatList[index]['avatar'],
                    height: 40,
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      chatList[index]['name'].toString(),
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 173),
                    child: Row(
                      children: [
                        Text(
                          "yesterday",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 59),
                child: Text(chatListSubtitle[index]['Message'].toString()),
              ),
            );
          }),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (home) => log("Home"),
        backgroundColor: const Color.fromARGB(221, 0, 0, 0),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),
    );
  }
}

// List.generate(
//               myList.length,
//               (index) => Column(
//                 children: [
//
//                   Padding(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Image.network(
//                           myList[index]['src'],
//                           height: 20,
//                           width: 15,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18),
//                           child: Text(
//                             myList[index]['text'].toString(),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
