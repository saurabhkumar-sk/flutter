import 'package:flutter/material.dart';
import 'package:my_first_app/utils/database.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lists")),
      body: Scrollbar(
        interactive: true,
        thickness: 10,
        trackVisibility: true,
        thumbVisibility: true,
        radius: const Radius.circular(15),
        scrollbarOrientation: ScrollbarOrientation.right,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: List.generate(
              myImages.length,
              (index) => Padding(
                padding: const EdgeInsets.only(
                  top: 5.0,
                  left: 10,
                  right: 15,
                ),
                child: ListTile(
                  tileColor: Colors.amber,
                  title: Text(
                    myImages[index]['name'],
                  ),
                  subtitle: Text(myImages[index]['age'].toString()),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
