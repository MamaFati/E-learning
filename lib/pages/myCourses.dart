import 'package:e_learning/component/my_courses_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_learning/models/coursesModel.dart';
import 'package:e_learning/models/course.dart';
import 'package:e_learning/theme/theme_data.dart';

class myCourse extends StatefulWidget {
  const myCourse({super.key});

  @override
  State<myCourse> createState() => _myCourseState();
}

class _myCourseState extends State<myCourse> {
  @override
  Widget build(BuildContext context) {
    final coursesModel = Provider.of<Coursesmodel>(context);
    final List<main_courses> userCourses = coursesModel.getUserCourses();

    return Scaffold(
       
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppGradients.mainGradient,
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: userCourses.length,
          itemBuilder: (context, index) {
            final course = userCourses[index];
            return MyCourseTile(
                course: course); // Custom widget to display course
          },
        ),
      ),
    );
  }
}
