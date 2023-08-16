//===>2  theme, text, appBar
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  String name = "Saurabh";
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: "my first app",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(15, 218, 218, 1),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My App Bar',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromRGBO(250, 128, 14, 0.91),
          iconTheme: const IconThemeData(),
        ),
        body: Center(
          child: Text(
            // 'Hello!!!'
            name,
            style: const TextStyle(
                color: Color(0xFFD3EE01),
                fontWeight: FontWeight.w900,
                fontSize: 30),
          ),
        ),
      ),
    );
  }
}

//==>>1
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const Center(
//     child: Text(
//       'hello saurabh!',
//       textDirection: TextDirection.ltr,
//     ),
//   ));
// }
