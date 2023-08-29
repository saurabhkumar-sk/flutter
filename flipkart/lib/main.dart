import 'package:flutter/material.dart';
import 'package:my_first_app/Screens/meadiaquary_wrap_table.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Clone",
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      // home: const App(
      //   name: 'login',
      // ),
      // home: const WrapWidgetScreen(),
      // home: const CardWeidget(),
      home: const TableScreen(),
    );
  }
}
