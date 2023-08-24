import 'package:flutter/material.dart';
import 'package:my_first_app/Screens/expaded_screen.dart';
import 'package:my_first_app/btn/apply_btn.dart';
import 'package:my_first_app/btn/my_btn_screen.dart';
import 'package:my_first_app/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flipkart clone",
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      home: 
      const App(
        name: 'login',
      ),
    );
  }
}
