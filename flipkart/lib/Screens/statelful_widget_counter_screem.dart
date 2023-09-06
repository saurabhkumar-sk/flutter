import 'dart:developer';

import 'package:flutter/material.dart';

class StatefulWidgetScreen extends StatefulWidget {
  const StatefulWidgetScreen({super.key});

  @override
  State<StatefulWidgetScreen> createState() => _StatefulWidgetScreenState();
}

class _StatefulWidgetScreenState extends State<StatefulWidgetScreen> {
  int number = 0;

  // @override
  // void initState() {
  //   super.initState();
  //   number = 10;
  // }

  // @override
  // void dispose() {
  //   log('dispose');
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stateful widget',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              '$number',
              style: const TextStyle(fontSize: 30),
            ),
          ),
          const Text('Counter'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          number++;
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
