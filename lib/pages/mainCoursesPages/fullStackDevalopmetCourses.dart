import 'package:e_learning/models/chapterModelRepo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_learning/component/course_page.dart';
// import 'package:e_learning/repositories/course_repository.dart'; // Ensure correct path

class FullStackCourses extends StatelessWidget {
  FullStackCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Access the CourseRepository from the Provider
    final courseRepository = Provider.of<CourseRepository>(context);
    // Retrieve the course data
    final course = courseRepository.getCourse();

    // Build the widget
    return Scaffold(
      body: Container(
         decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFFBFFFF), // Light cyan
                Color(0xFFFFFFFF), // White
                Color(0xFF9BE5DD), // Light turquoise
              ],
              end: Alignment.bottomCenter,
              begin: Alignment.topLeft,
            ),
          ),
        child: CoursePage(course: course)),
    );
  }
}
