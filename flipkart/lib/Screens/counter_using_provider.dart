import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_first_app/providers/count_provider.dart';
import 'package:provider/provider.dart';

class CounterScreenProvider extends StatefulWidget {
  const CounterScreenProvider({super.key});

  @override
  State<CounterScreenProvider> createState() => _CounterScreenPRoviderState();
}

class _CounterScreenPRoviderState extends State<CounterScreenProvider> {
  int count = 0;
  // final provider = CountProvider();

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);

    log('object');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<CountProvider>(
            builder: (context, value, child) {
              return Center(child: Text(value.counter.toString()));
            },
          ),
          ElevatedButton(
            onPressed: () {
              countProvider.setCount();
            },
            child: const Text('Add'),
          )
        ],
      ),
    );
  }
}
