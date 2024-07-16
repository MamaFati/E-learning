import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:e_learning/models/course.dart';

class CoursesTile extends StatelessWidget {
  final main_courses Courses;
  final bool isAllCoursesPage;
  void Function()? onTap;

  CoursesTile({
    super.key,
    required this.Courses,
    required this.isAllCoursesPage,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:
          isAllCoursesPage ? double.infinity : 300, // Full width for row layout
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: isAllCoursesPage ? Colors.white : Colors.grey[100],
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
        padding: const EdgeInsets.all(15.0),
        child: isAllCoursesPage ? buildRowLayout() : buildColumnLayout(),
      ),
    );
  }

  Widget buildRowLayout() {
    return Row(
      children: [
        Image.asset(
          Courses.ImagePath,
          height: 100.0,
          width: 100.0,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 5.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Course name
              Text(
                Courses.courseName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              // Description
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  Courses.Description,
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
              ),
              // Rating and Free/Paid status
              Row(
                children: [
                  // Rating stars
                  RatingBar.builder(
                    initialRating: Courses.rating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 20.0,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  // Free/Paid status
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      Courses.isFree ? "Free" : "Paid",
                      style: TextStyle(
                        color: Courses.isFree ? Colors.green : Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Add bottom to enable user add courses to their wish list
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: GestureDetector(
                      onTap: onTap,
                      child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12))),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildColumnLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          Courses.ImagePath,
          height: 200.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Course name
            Text(
              Courses.courseName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            // Description
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                Courses.Description,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            // Rating and Free/Paid status
            Row(
              children: [
                // Rating stars
                RatingBar.builder(
                  initialRating: Courses.rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20.0,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                // Free/Paid status
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    Courses.isFree ? "Free" : "Paid",
                    style: TextStyle(
                      color: Courses.isFree ? Colors.green : Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
