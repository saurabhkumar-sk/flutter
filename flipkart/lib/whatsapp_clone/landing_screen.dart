import 'package:flutter/material.dart';
import 'package:my_first_app/whatsapp_clone/tabbar/calls_tabbar.dart';
import 'package:my_first_app/whatsapp_clone/tabbar/chat_tabbar.dart';
import 'package:my_first_app/whatsapp_clone/tabbar/community_tabbar.dart';
import 'package:my_first_app/whatsapp_clone/tabbar/status_tabbar.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     log("Chat");
        //   },
        // ),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(18, 140, 126, 2),
          title: Title(
            color: Colors.white,
            child: const Text(
              'WhatsApp',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
          actions: const [
            Icon(
              Icons.camera_alt_outlined,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Icon(Icons.search),
            ),
            Icon(Icons.more_vert)
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Color.fromARGB(255, 214, 214, 214),
            // automaticIndicatorColorAdjustment: false,
            // labelStyle: TextStyle(color: Colors.amber),
            // dividerColor: Colors.amber,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 4,
            // overlayColor: MaterialStatePropertyAll(Colors.amber),
            labelStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            padding: EdgeInsets.only(right: 10),
            tabs: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.groups,
                  ),
                ],
              ),
              Text(
                "Chats",
                style: TextStyle(),
              ),
              Text(
                "Status",
                style: TextStyle(),
              ),
              Text(
                "Calls",
                style: TextStyle(),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: CommunityTabBar()),
            Center(child: TextTabBar()),
            Center(child: StatusTabBar()),
            Center(child: CallsTabBar()),
          ],
        ),
      ),
    );
  }
}
