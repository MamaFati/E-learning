import 'package:e_learning/models/course.dart';
import 'package:e_learning/theme/theme_data.dart';
import 'package:flutter/material.dart';

class MyCourseTile extends StatelessWidget {
  final main_courses course;

  MyCourseTile({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(color: Colors.black, width: 1.0), // Thin black border
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(8.0),
        leading: Image.asset(course.ImagePath, width: 50, height: 50),
        title: Text(
          course.courseName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(course.Description),
            SizedBox(height: 8),
            LinearProgressIndicator(
              value: course.progress ??
                  0.0, // Assuming `progress` is a property of `main_courses`
              backgroundColor: Colors.grey[300],
              color: Colors.blue,
            ),
            SizedBox(height: 8),
            Text(
              'Progress: ${(course.progress ?? 0.0 * 100).toStringAsFixed(0)}%', // Display progress percentage
            ),
          ],
        ),
        trailing: Text('${course.rating} ★'),
      ),
    );

  }
}
