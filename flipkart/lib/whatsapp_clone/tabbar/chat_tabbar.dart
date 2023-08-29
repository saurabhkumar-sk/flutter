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
