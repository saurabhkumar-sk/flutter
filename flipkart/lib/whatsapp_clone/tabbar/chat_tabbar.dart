import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_first_app/utils/url_list.dart';
import 'package:my_first_app/whatsapp_clone/screens/chatbox_contact_screen.dart';
import 'package:my_first_app/whatsapp_clone/screens/chatting_sccreen.dart';

class ChatTabBarScreen extends StatelessWidget {
  const ChatTabBarScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ChatListContact(),
            ),
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChattingPage(),
                ),
              );
            },
            leading: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, bottom: 150),
                    child: FittedBox(
                      // fit: BoxFit.fill,
                      child: Dialog(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              chatList[index]['avatar'],
                            ),
                            const Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 50),
                                  child: Icon(
                                    Icons.chat,
                                    color: Colors.teal,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 50),
                                  child: Icon(
                                    Icons.call,
                                    color: Colors.teal,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 50),
                                  child: Icon(
                                    Icons.videocam_sharp,
                                    color: Colors.teal,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 50),
                                  child: Icon(
                                    Icons.info_outline,
                                    color: Colors.teal,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  chatList[index]['avatar'],
                ),
              ),
            ),
            title: Text(
              chatList[index]['name'],
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Text(chatListSubtitle[index]['Message'].toString()),
            ),
            trailing: const Text("Yesterday"),
          );
        },
      ),

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
