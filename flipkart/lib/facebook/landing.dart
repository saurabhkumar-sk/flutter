import 'package:flutter/material.dart';

class FbLandingScreen extends StatelessWidget {
  const FbLandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            stretch: true,
            backgroundColor: Colors.amber,
            title: const Text(
              'facebook',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 6, 135, 240),
                  fontSize: 30),
            ),
            actions: [
              IconButton.filledTonal(
                // iconSize: 30,
                onPressed: () {},
                icon: const Icon(Icons.add, color: Colors.black),
              ),
              IconButton.filledTonal(
                // iconSize: 30,
                onPressed: () {},
                icon: const Icon(Icons.search_sharp, color: Colors.black),
              ),
              IconButton.filledTonal(
                // iconSize: 30,
                onPressed: () {},
                icon: const Icon(
                  Icons.facebook,
                  color: Colors.black,
                ),
              ),
            ],
            bottom: AppBar(),
          ),
          SliverList.builder(
            itemCount: 30,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(color: Colors.blue, child: const Text('data')),
              );
            },
          ),
        ],
      ),
    );
  }
}
