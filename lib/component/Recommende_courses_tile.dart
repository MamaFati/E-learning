import 'package:flutter/material.dart';
import 'package:e_learning/models/course.dart';

class RecommendeCoursesTile extends StatelessWidget {
  final main_courses course;

  const RecommendeCoursesTile({Key? key, required this.course})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100.0,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  course.ImagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              course.courseName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              course.Description,
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
