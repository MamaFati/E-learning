// course_description.dart
import 'package:flutter/material.dart';

class CourseDescription extends StatelessWidget {
  final String description;
  final Color textColor;

  CourseDescription({
    required this.description,
    this.textColor = Colors.black87,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        description,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}
