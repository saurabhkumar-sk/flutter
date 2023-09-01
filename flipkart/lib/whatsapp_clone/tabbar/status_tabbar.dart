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
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 40,
              width: 40,
              child: FloatingActionButton(
                onPressed: () {
                  log("Edit");
                },
                backgroundColor: const Color.fromARGB(255, 167, 238, 203),
                child: const Icon(
                  Icons.edit,
                  color: Color.fromRGBO(18, 140, 126, 2),
                ),
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              log("camera");
            },
            backgroundColor: const Color.fromRGBO(18, 140, 126, 2),
            child: const Icon(
              Icons.camera_alt_rounded,
              color: Colors.white,
            ),
          ),
        ],
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          iconColor: Colors.white,
          leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border:
                    Border.all(color: const Color.fromARGB(255, 93, 90, 89)),
                color: const Color.fromARGB(253, 40, 132, 122),
              ),
              child: const Icon(Icons.control_point_duplicate_sharp)),
          title: const Text("My Status"),
          subtitle: const Text("Tap to add status update"),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 5),
          child: Text("Recent updates"),
        ),

        // recent Icon(icon)
        ListView.builder(
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) {
            return ListTile(
              iconColor: Colors.white,
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  chatList[index]['avatar'],
                ),
              ),
              title: Text(
                chatList[index]['name'].toString(),
                style: const TextStyle(fontSize: 16),
              ),
              subtitle: Text(
                chatListSubtitle[index]['time'],
              ),
            );
          },
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20, left: 22),
          child: Text('Viewed updates'),
        ),

        ListView.builder(
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (context, index) {
            return ListTile(
              iconColor: Colors.white,
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  chatList[index]['avatar'],
                ),
              ),
              title: Text(
                chatList[index]['name'].toString(),
                style: const TextStyle(fontSize: 16),
              ),
              subtitle: Text(
                chatListSubtitle[index]['time'],
              ),
            );
          },
        ),
      ],
    );
  }
}
