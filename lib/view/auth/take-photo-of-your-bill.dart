import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraApp extends StatefulWidget {
  const CameraApp({super.key});

  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  File? _selectedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tester"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  _pickImageFromGallery();
                },
                child: Text("Hello World")),
            ElevatedButton(
                onPressed: () {
                  _pickImageFromCamera();
                },
                child: Text("Hello"))
          ],
        ),
      ),
    );
  }

  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }

  Future _pickImageFromCamera() async {
    try {
      final returnedImage =
          await ImagePicker().pickImage(source: ImageSource.camera);
      if (returnedImage == null) {
        print("No image selected.");
        return;
      }
      setState(() {
        _selectedImage = File(returnedImage.path);
      });
    } catch (e) {
      print("Error picking image from camera: $e");
    }
  }
}
