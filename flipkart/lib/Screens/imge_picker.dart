import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  void pick(ImageSource source) async {
    try {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: source);
      if (pickedFile != null) {
        log(pickedFile.path, name: 'pickedFile');
        final imageFile = File(pickedFile.path);
        log(imageFile.toString(), name: 'ImageFile');
      }
    } catch (e, s) {
      log(e.toString(), stackTrace: s, name: 'ImagePicker error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Image picker',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              pick(ImageSource.camera);
              // pick(ImageSource.gallery);
            },
            child: Container(
              margin: const EdgeInsets.only(
                left: 100,
                top: 15,
              ),
              height: 100,
              width: 100,
              color: const Color.fromARGB(255, 194, 229, 229),
              child: const Icon(
                Icons.add_a_photo,
                color: Color.fromARGB(255, 1, 151, 197),
              ),
            ),
          ),
          const SizedBox(height: 50),
          GestureDetector(
            onTap: () {
              // pick(ImageSource.camera);
              pick(ImageSource.gallery);
            },
            child: Container(
              margin: const EdgeInsets.only(
                left: 100,
                top: 15,
              ),
              height: 200,
              width: 200,
              color: const Color.fromARGB(255, 194, 229, 229),
              child: const Icon(
                Icons.image,
                color: Color.fromARGB(255, 1, 151, 197),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
