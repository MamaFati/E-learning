import 'package:e_learning/component/courses_tile.dart';
import 'package:e_learning/models/course.dart';
import 'package:e_learning/models/coursesModel.dart';
import 'package:e_learning/pages/AllCoursesPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class coursesPage extends StatefulWidget {
  const coursesPage({super.key});

  @override
  State<coursesPage> createState() => _couresePageState();
}

class _couresePageState extends State<coursesPage> {
  // add heels to carts
  void addItemToWishList(main_courses Courses) {
    Provider.of<courseModel>(context, listen: false).addCoursesToWishList(Courses);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<courseModel>(
      builder: (context, value, child) => Scaffold(
        body: Container(
          decoration: const BoxDecoration(
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
          height: double.infinity,
          child: Column(
            children: [
              // search bar
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10.0,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search...",
                      border: InputBorder.none,
                      icon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
              // row for title
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Courses",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => allCourses(),
                              ));
                        },
                        child: Text("All courses",
                            style: TextStyle(color: Colors.blue))),
                  ],
                ),
              ),
              // sliding courses
              Expanded(
                  child: SizedBox(
                // height: 100,
                child: ListView.builder(
                    itemCount: value.getCoursesList(false).length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      // Get a course from the list
                      main_courses Courses = value.getCoursesList(false)[index];
                      return CoursesTile(
                        course: Courses,
                        isAllCoursesPage: false,
                        onTap: () => addItemToWishList(Courses),
                      );
                    })),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
