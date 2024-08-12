// course_status.dart
import 'package:flutter/material.dart';

class CourseStatus extends StatelessWidget {
  final bool isFree;
  final double? price;

  CourseStatus({required this.isFree, this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Text(
        isFree ? "Free" : "\$${price?.toStringAsFixed(0) ?? ''}",
        style: TextStyle(
          color: isFree ? Colors.green : Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
