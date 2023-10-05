import 'package:flutter/material.dart';
import 'package:my_first_app/utils/my_shared_prefrences.dart';

class LocalStorageScreen extends StatefulWidget {
  const LocalStorageScreen({super.key});

  @override
  State<LocalStorageScreen> createState() => _LocalStorageScreenState();
}

class _LocalStorageScreenState extends State<LocalStorageScreen> {
  //Switch
  bool light = false;
  @override
  void initState() {
    super.initState();
    MyShared.instance.getBool('light_theme').then((value) {
      setState(() {
        light = value ?? false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: light ? Colors.white : Colors.black,
      appBar: AppBar(
        title: const Text('Material Widget'),
      ),
      body: Center(
        child: Switch(
            value: light,
            onChanged: (bool value) {
              setState(() {
                light = value;
              });
              MyShared.instance.setBool('light_theme', value);
            }),
      ),
    );
  }
}
