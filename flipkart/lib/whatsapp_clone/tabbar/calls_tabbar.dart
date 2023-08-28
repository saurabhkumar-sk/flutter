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
          ListTile(
            iconColor: Colors.white,
            leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(18, 140, 126, 2),
                ),
                child: const Icon(Icons.link_outlined)),
            title: const Text("Create call link"),
            subtitle: const Text("Share a link for your WhatsApp call"),
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
                title: const Text("Saurabh"),
                subtitle: const Text(" ↙ Yesterday  00:00"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
