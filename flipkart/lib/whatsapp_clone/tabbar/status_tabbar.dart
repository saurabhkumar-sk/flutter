import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_first_app/utils/url_list.dart';

class StatusTabBar extends StatelessWidget {
  const StatusTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(18, 140, 126, 2),
        child: const Icon(
          Icons.camera_alt_rounded,
          color: Colors.white,
        ),
      ),
      body: const StatusBody(),
    );
  }
}

class StatusBody extends StatelessWidget {
  const StatusBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                iconColor: Colors.white,
                leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: const Color.fromARGB(255, 93, 90, 89)),
                      color: const Color.fromARGB(253, 40, 132, 122),
                    ),
                    child: const Icon(Icons.control_point_duplicate_sharp)),
                title: const Text("My Status"),
                subtitle: const Text("Tap to add status update"),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 270, top: 10),
                child: Text("Recent updates"),
              ),

              // recent Icon(icon)
              Column(
                children: [
                  ListTile(
                    iconColor: Colors.white,
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Image.asset(
                        chatList[index]['avatar'],
                      ),
                    ),
                    title: Text(
                      chatList[index]['name'].toString(),
                      style: const TextStyle(fontSize: 16),
                    ),
                    subtitle: const Text("Today, 00:00"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 270, top: 10),
                    child: Text("Viewed updates"),
                  ),
                ],
              ),

              //Viewed Icons
              Column(
                children: [
                  ListTile(
                    iconColor: Colors.white,
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        statusIcon[index]['statusicon'],
                        height: 40,
                        width: 50,
                      ),
                    ),
                    title: Text(
                      statusIcon[index]['status'].toString(),
                      style: const TextStyle(fontSize: 16),
                    ),
                    subtitle: const Text("Yesterday, 22:00"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 270, top: 10),
                  ),
                  // ],
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(327, 500, 0, 0),
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: FloatingActionButton(
                            onPressed: () {
                              log("Status");
                            },
                            backgroundColor: Colors.green.shade200,
                            child: const Icon(
                              Icons.edit_rounded,
                              color: Color.fromARGB(255, 3, 132, 8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        });
  }
}
