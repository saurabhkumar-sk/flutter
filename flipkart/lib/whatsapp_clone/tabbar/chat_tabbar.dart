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
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => FittedBox(
                    fit: BoxFit.cover,
                    child: Dialog(
                      clipBehavior: Clip.hardEdge,
                      child: Column(
                        children: [
                          Image.asset(
                            chatList[index]['avatar'],
                            height: 40,
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              leading: Image.asset(
                chatList[index]['avatar'],
                height: 40,
                width: 50,
              ),
              title: Text(
                chatList[index]['name'].toString(),
                style: const TextStyle(fontSize: 16),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text(chatListSubtitle[index]['Message'].toString()),
              ),
              trailing: const Text("Yesterday"),
            );
          }),
      // bottomNavigationBar: BottomNavigationBar(
      //   fixedColor: Colors.white,
      //   unselectedItemColor: Colors.grey,
      //   onTap: (home) => log("Home"),
      //   backgroundColor: const Color.fromARGB(221, 0, 0, 0),
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "home",
      //     ),
      //     BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
      //   ],
      // ),
    );
  }
}
