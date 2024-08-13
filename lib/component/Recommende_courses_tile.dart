import 'package:e_learning/theme/theme_data.dart';
import 'package:e_learning/utils/add_to_wishList_btn.dart';
import 'package:e_learning/utils/courses_status.dart';
import 'package:e_learning/utils/navigation.dart';
import 'package:e_learning/utils/rating_star.dart';
import 'package:e_learning/utils/tap_link.dart';
import 'package:flutter/material.dart';
import 'package:e_learning/models/course.dart';

class RecommendeCoursesTile extends StatelessWidget {
  final main_courses course;
  final void Function()? onTap;

  const RecommendeCoursesTile({
    super.key,
    required this.course,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: AppColors.lightCyan,
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
            SizedBox(height: 10.0),
            Text(
              course.Description,
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                RatingStars(
                  initialRating: course.rating,
                  itemSize: 10.0,
                ),
                CourseStatus(
                  isFree: course.isFree,
                  price: course.price,
                ),
              ],
            ),
            Row(
              children: [
                SignInLink(
                  onTap: () {
                    Navigation.navigateToDetailPage(context, course);
                  },
                  text: "MORE",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                    fontSize: 10, // Customize font size
                    // fontWeight: FontWeight.bold, // Customize font weight
                  ),
                ),
                // fav Icon
                AddToWishlistButton(onTap: onTap),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
