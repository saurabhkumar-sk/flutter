import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_first_app/utils/url_list.dart';
import 'package:my_first_app/whatsapp_clone/screens/chat._screen.dart';

class ChatTabBarScreen extends StatelessWidget {
  const ChatTabBarScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log('message');
        },
        backgroundColor: const Color.fromRGBO(18, 140, 126, 2),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ContactChatScreen(),
              ),
            );
          },
          child: const Icon(
            Icons.chat,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: chatList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, bottom: 150),
                    child: FittedBox(
                      child: Dialog(
                        // backgroundColor: Colors.amber,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              chatList[index]['avatar'],
                              height: MediaQuery.of(context).size.width - 100,
                              width: MediaQuery.of(context).size.width - 100,
                            ),
                            const Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 50),
                                  child: Icon(Icons.chat),
                                ),
                                Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 50),
                                    child: Icon(Icons.call)),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 50),
                                  child: Icon(Icons.videocam_sharp),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 50),
                                  child: Icon(Icons.info_outline),
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
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  chatList[index]['avatar'],
                ),
              ),
              title: Text(
                chatList[index]['name'],
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
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
