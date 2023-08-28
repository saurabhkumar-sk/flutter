import 'package:flutter/material.dart';

class CardWeidget extends StatelessWidget {
  const CardWeidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Card(
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("           saurabh kumar            "),
              Text("saurabh kumar "),
              Text("saurabh kumar "),
              Text("saurabh kumar "),
              Text("saurabh kumar "),
            ],
          
          ),
        ),
      ),
    );
  }
}
