import 'package:flutter/material.dart';

class CustomImageTextField extends StatelessWidget {
  final String imagePath1;
  final String imagePath2;

  const CustomImageTextField(
      {required this.imagePath1, required this.imagePath2});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        const TextField(
          decoration: InputDecoration(
            hintText: 'XXXX XXXX XXXX XX',
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(20.0),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              imagePath1,
              width: 40.0,
              height: 24.0,
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 8.0), // Space between images
            Image.asset(
              imagePath2,
              width: 40.0,
              height: 24.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ],
    );
  }
}
