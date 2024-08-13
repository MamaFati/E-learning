// ignore: file_names
// course_image.dart
import 'package:flutter/material.dart';

class CourseImage extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;

  const CourseImage({super.key, 
    required this.imagePath,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      height: height,
      width: width,
      fit: BoxFit.cover,
    );
  }
}
