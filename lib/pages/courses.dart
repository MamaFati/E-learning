import 'package:e_learning/component/courses_tile.dart';

import 'package:e_learning/models/course.dart';
import 'package:e_learning/models/coursesModel.dart';
import 'package:e_learning/pages/AllCoursesPage.dart';
import 'package:e_learning/pages/RecommendedSection.dart';
import 'package:e_learning/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class coursesPage extends StatefulWidget {
  const coursesPage({super.key});

  @override
  State<coursesPage> createState() => _couresePageState();
}

class _couresePageState extends State<coursesPage> {
  // Add items to wish list
  void addItemToWishList(main_courses course) {
    Provider.of<Coursesmodel>(context, listen: false)
        .addCoursesToWishList(course);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Coursesmodel>(
      builder: (context, value, child) => Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: AppGradients.mainGradient,
          ),
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Row for title
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Courses",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => allCourses(),
                            ),
                          );
                        },
                        child: Text(
                          "All courses",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
                // Sliding courses
                SizedBox(
                  height: 270,
                  child: ListView.builder(
                    itemCount: value.getCoursesList(false).length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      // Get a course from the list
                      main_courses course = value.getCoursesList(false)[index];
                      return CoursesTile(
                        course: course,
                        isAllCoursesPage: false,
                        onTap: () => addItemToWishList(course),
                      );
                    }),
                  ),
                ),
                //
                RecommendedCoursesSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
