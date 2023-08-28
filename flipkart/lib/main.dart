import 'package:flutter/material.dart';
import 'package:my_first_app/Screens/card.dart';
import 'package:my_first_app/Screens/fittedfox.dart';
import 'package:my_first_app/whatsapp_clone/landing_screen.dart';

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
          // backgroundColor: Colors.blue,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      // home: const App(
      //   name: 'login',
      // ),
      home: const LandingScreen(),
      // home: const CardWeidget(),
    );
  }
}
