import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(24, 24, 24, 0),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(108, 339, 109, 0),
              decoration: BoxDecoration(
                border: Border.all(
                    width: 1, color: const Color.fromARGB(255, 43, 43, 43)),
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(26, 26, 26, 0.965),
                    Color.fromRGBO(26, 26, 26, 0.965),
                    Color.fromRGBO(26, 26, 26, 0.965),
                  ],
                ),
              ),
              height: 56,
              width: 173,
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(21, 16, 0, 16),
                  ),
                  Text(
                    "My Button",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Color.fromRGBO(222, 222, 215, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      // fontFamily: 'Raleway',
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0, 16, 21, 16)),
                  Image(
                    image: AssetImage("assets/images/Vector.png"),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(108, 26, 109, 0),
              decoration: BoxDecoration(
                // color: const Color.fromRGBO(3, 160, 238, 0.415),
                border: Border.all(
                  width: 2,
                  color: const Color.fromRGBO(137, 246, 254, 0.094),
                ),

                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0x1691F6FD),
                    Color.fromRGBO(13, 116, 194, 0.243),
                  ],
                ),
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                // shape: BoxShape.circle,
              ),
              height: 84,
              width: 84,
              
              child: const Image(
                  image: AssetImage("assets/images/Vector  color.png")),
            ),
          ],

          
        ),
        
      ),
    );
  }
}
