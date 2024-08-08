import 'package:e_learning/theme/theme_data.dart';
import 'package:e_learning/utils/add_to_wishList_btn.dart';
import 'package:e_learning/utils/courses_Description.dart';
import 'package:e_learning/utils/courses_Images.dart';
import 'package:e_learning/utils/courses_name.dart';
import 'package:e_learning/utils/courses_status.dart';
import 'package:e_learning/utils/navigation.dart';
import 'package:e_learning/utils/rating_star.dart';
import 'package:e_learning/utils/tap_link.dart';
import 'package:flutter/material.dart';
import 'package:e_learning/models/course.dart';

class CoursesTile extends StatelessWidget {
  final main_courses course;
  final bool isAllCoursesPage;
  // void Function()? onTap;

  CoursesTile({
    super.key,
    required this.course,
    required this.isAllCoursesPage, 
    // required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: isAllCoursesPage
            ? double.infinity
            : 290, // Full width for row layout
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: isAllCoursesPage ? Colors.white : AppColors.lightCyan,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5.0,
              spreadRadius: 2.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: isAllCoursesPage ? buildRowLayout() : buildColumnLayout( context),
        ),
      ),
    );
  }

  Widget buildRowLayout() {
    return Row(
      children: [
        CourseImage(
          imagePath: course.ImagePath,
          height: 100.0,
          width: 100.0,
        ),
        SizedBox(width: 5.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CourseName(name: course.courseName),
              CourseDescription(description: course.Description),
              Row(
                children: [
                  RatingStars(
                    initialRating: course.rating,
                    itemSize: 20.0,
                  ),
                  CourseStatus(
                    isFree: course.isFree,
                    price: course.price,
                  ),
                  // AddToWishlistButton(onTap: onTap),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildColumnLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CourseImage(
          imagePath: course.ImagePath,
          height: 90.0,
          width: double.infinity,
        ),
        CourseName(name: course.courseName, fontSize: 18.0),
        CourseDescription(
            description: course.Description, textColor: Colors.grey),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Row(children: [
             RatingStars(
              initialRating: course.rating,
              itemSize: 10.0,
            ),
            CourseStatus(
              isFree: course.isFree,
              price: course.price,
            ),
           ],),
           Row(children: [
            SignInLink(
                  onTap: () {
                     Navigation.navigateToDetailPage(context, course);
                  },
                  text: "MORE",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                    fontSize: 16, // Customize font size
                    fontWeight: FontWeight.bold, // Customize font weight
                  ),
                ),
           ],)
          ],
        ),
      ],
    );
  }
}
