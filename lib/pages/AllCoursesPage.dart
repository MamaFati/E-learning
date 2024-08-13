import 'package:e_learning/component/courses_tile.dart';
import 'package:e_learning/models/course.dart';
import 'package:e_learning/models/coursesModel.dart';
import 'package:e_learning/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class allCourses extends StatefulWidget {
  const allCourses({super.key});

  @override
  State<allCourses> createState() => _allCoursesState();
}

class _allCoursesState extends State<allCourses> {
  @override
  Widget build(BuildContext context) {
    // add courses to wishlist
    void addItemToWishList(main_courses courses) {
      Provider.of<Coursesmodel>(context, listen: false)
          .addCoursesToWishList(courses);
      //  Show massage to user when courses are added to wishList
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Successfully Added!!"),
          content: Text("check your WishList"),
        ),
      );
    }

    var courses = Provider.of<Coursesmodel>(context).getCoursesList(true);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightCyan,
        title: Text('All Courses'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.mainGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: courses.length,
            itemBuilder: (context, index) {
              return CoursesTile(
                course: courses[index],
                isAllCoursesPage: true,
                onTap: () => addItemToWishList(courses[index]),
              );
            },
          ),
        ),
      ),
    );
  }
}
