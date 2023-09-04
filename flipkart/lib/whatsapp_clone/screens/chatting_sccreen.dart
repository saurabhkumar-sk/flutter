import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_first_app/utils/url_list.dart';

final textController = TextEditingController(text: 'Hii');

class ChattingPage extends StatelessWidget {
  const ChattingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                chatList[0]['avatar'],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Saurabh',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 80, bottom: 8, left: 3),
            child: TextField(
              onChanged: (value) {
                log(value, name: 'onChanged');
              },
              onEditingComplete: () {
                log(textController.text, name: 'onEditingComplete');
              },
              onSubmitted: (value) {
                log(value, name: 'onSumbitted');
              },
              decoration: const InputDecoration(
                // icon: Icon(Icons.mic),

                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(
                  Icons.emoji_emotions_outlined,
                ),
                hintText: 'Message',
                hintStyle: TextStyle(fontSize: 20),
                suffixIcon: Icon(
                  Icons.camera_alt_rounded,
                ),
                // suffix: Icon(Icons.mic)

                //     ),)
                //     ),,
                // suffixIcon: Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     IconButton(
                //       onPressed: () {},
                //       icon: const Icon(Icons.attach_file_outlined),
                //     ),
                //     IconButton(
                //       // color: Colors.grey,
                //       onPressed: () {},
                //       icon: const Icon(Icons.currency_rupee),
                //     ),
                //     IconButton(
                //       onPressed: () {},
                //       icon: const Icon(Icons.camera_alt_rounded),
                //     ),
                //   ],
                // ),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: TextField(),
          // )
        ],
      ),
    );
  }
}
