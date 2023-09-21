import 'package:flutter/material.dart';

class MyTestPage extends StatelessWidget {
  const MyTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "BottomNavBar",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.blue,
          bottom: const TabBar(
            indicatorColor: Colors.deepPurple,
            indicatorWeight: 5.0,
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.deepPurple,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(
                text: "Chat",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return const ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    leading: CircleAvatar(
                      backgroundColor: Colors.black26,
                      radius: 40.0,
                    ),
                    title: Text("Your Name"),
                    subtitle: Text("This will be your message"),
                  );
                },
              ),
            ),
            const Center(
              child: Text("status"),
            ),
            const Center(
              child: Text("calls"),
            ),
          ],
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   backgroundColor: Colors.black,
        //   selectedItemColor: Colors.white,
        //   unselectedItemColor: Colors.white54,
        //   items: const [
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.home_outlined,
        //       ),
        //       label: "Home",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.settings,
        //       ),
        //       label: "Setting",
        //     )
        //   ],
        // ),
      ),
    );
  }
}
