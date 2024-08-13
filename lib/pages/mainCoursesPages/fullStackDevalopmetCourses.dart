import 'package:e_learning/models/chapterModelRepo.dart';
import 'package:e_learning/models/course.dart';
import 'package:e_learning/theme/theme_data.dart';
 
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_learning/component/course_page.dart';
 

class FullStackCourses extends StatelessWidget {
   final main_courses course;
  
  FullStackCourses({Key? key,required this.course,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Access the CourseRepository from the Provider
    final courseRepository = Provider.of<CourseRepository>(context);
    // Retrieve the course data
    final course = courseRepository.getCourse();

    // Build the widget
    return Scaffold(
      body: Container(
         decoration: const BoxDecoration(
            gradient: AppGradients.mainGradient,
          ),
        child: CoursePage(course: course)),
    );
  }
}
