// import 'package:e_learning/component/course_page.dart';
import 'package:e_learning/models/course.dart';
// import 'package:e_learning/pages/mainCoursesPages/fullStackDevalopmetCourses.dart';
import 'package:e_learning/utils/navigation.dart';
import 'package:flutter/material.dart';

class SuccessMessage extends StatefulWidget {
  final main_courses course;

  SuccessMessage({super.key, required this.course});

  @override
  _SuccessMessageState createState() => _SuccessMessageState();
}

class _SuccessMessageState extends State<SuccessMessage> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next page after a delay
    Future.delayed(Duration(seconds: 3), () {
      Navigation.navigateTomainCoursesPage(context, widget.course); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Stack to overlay circles and icon
                Stack(
                  alignment: Alignment.center,
                  children: [
                    // Outer circle
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red, // Outer circle color
                      ),
                    ),
                    // Inner circle
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white, // Inner circle color
                      ),
                    ),
                    // Icon in the center
                    Icon(
                      Icons.done,
                      size: 50,
                      color: Colors.red, // Icon color
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  "Congratulations",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Your payment has been processed successfully. Now you can start learning your favorite course and build a bright future.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
