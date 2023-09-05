import 'package:flutter/material.dart';

class NewCommunityScreen extends StatelessWidget {
  const NewCommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.close,
              color: Colors.grey,
            ),
          ),
        ),
        body: Column(
          textDirection: TextDirection.ltr,
          children: [
            const Center(
              child: Text(
                'Create a new community',
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 100,
                maxWidth: 300,
              ),
              child: const Text(
                  'Bring together a neighbourhood, school or more. create topic-based groups for members, and easily send them admmin annpuncements'),
            ),
          ],
        ),
      ),
    );
  }
}
