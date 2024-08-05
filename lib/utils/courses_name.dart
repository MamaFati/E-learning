// course_name.dart
import 'package:flutter/material.dart';

class CourseName extends StatelessWidget {
  final String name;
  final double fontSize;

  CourseName({
    required this.name,
    this.fontSize = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}
