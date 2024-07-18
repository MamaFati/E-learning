import 'package:e_learning/pages/detailedPages/digitalMarketingPage.dart';
import 'package:e_learning/pages/detailedPages/FullStackPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:e_learning/models/course.dart';
 

class CoursesTile extends StatelessWidget {
  final main_courses course;
  final bool isAllCoursesPage;
  void Function()? onTap;

  CoursesTile({
    super.key,
    required this.course,
    required this.isAllCoursesPage,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateToDetailPage(context, course);
      },
      child:  SingleChildScrollView(
        child: Container(
          width: isAllCoursesPage
              ? double.infinity
              : 300, // Full width for row layout
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
        ),
      ),
    );
  }

  void navigateToDetailPage(BuildContext context, main_courses course) {
    Widget detailPage;
    switch (course.courseName) {
      case 'Full Stack software Developer with a Portfolio':
        detailPage = FullStackDetailPage(course: course);
        break;
      case 'Become A Digital Marketer, With Mentorship ':
        detailPage = digitalMarketingPage(course: course);
        break;
      case 'Fundermentals Of Cyber security':
        detailPage = digitalMarketingPage(course: course);
        break;
      default:
        detailPage = digitalMarketingPage(
            course: course); // Default to web development page
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => detailPage),
    );
  }

  Widget buildRowLayout() {
    return Row(
      children: [
        Image.asset(
          course.ImagePath,
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
                course.courseName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              // Description
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  course.Description,
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
                    initialRating: course.rating,
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
                      course.isFree ? "Free" : "Paid",
                      style: TextStyle(
                        color: course.isFree ? Colors.green : Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Add button to enable user to add courses to their wish list
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
          course.ImagePath,
          height: 200.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Course name
            Text(
              course.courseName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            // Description
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                course.Description,
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
                  initialRating: course.rating,
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
                    course.isFree ? "Free" : "Paid",
                    style: TextStyle(
                      color: course.isFree ? Colors.green : Colors.red,
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
