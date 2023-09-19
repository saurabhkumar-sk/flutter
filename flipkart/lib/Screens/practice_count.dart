import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_first_app/providers/count_provider_practice.dart';
import 'package:provider/provider.dart';

class CounterScreensPractice extends StatefulWidget {
  const CounterScreensPractice({super.key});

  @override
  State<CounterScreensPractice> createState() => _CounterScreensPracticeState();
}

class _CounterScreensPracticeState extends State<CounterScreensPractice> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CountProviders>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CountProviders>(
              builder: (context, value, child) {
                return Text(
                  value.counter.toString(),
                );
              },
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                provider.setCount;
              },
              child: const Text('count'),
            ),
          ],
        ),
      ),
    );
  }
}
