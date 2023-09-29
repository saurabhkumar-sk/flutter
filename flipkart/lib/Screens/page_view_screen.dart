import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  int currentIndex = 0;
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Roated box',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
          controller.jumpToPage(value);
          // controller.animateToPage(
          //   value,
          //   duration: const Duration(seconds: 1),
          //   curve: Curves.linear,
          // );
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Page1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_photo_alternate), label: 'Page1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.maps_home_work_rounded), label: 'Page1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.leave_bags_at_home_rounded), label: 'Page1'),
        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          Column(
            children: [
              Container(
                color: Colors.green,
                child: const Center(child: Text('page 1')),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.width,
                  // width: 100,
                  child: PageView(
                    children: [
                      Container(
                        color: Colors.amber,
                      ),
                      Container(
                        color: Colors.red,
                      ),
                      Container(
                        color: Colors.green,
                      ),
                    ],
                  ))
            ],
          ),
          Container(
            color: Colors.white,
            child: const Center(child: Text('page 2')),
          ),
          Container(
            color: Colors.red,
            child: const Center(child: Text('page 3')),
          ),
          Container(
            color: Colors.yellow,
            child: const Center(child: Text('page 4')),
          ),
        ],
      ),
    );
  }
}
