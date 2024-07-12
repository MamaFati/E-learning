import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:e_learning/models/course.dart';

class CoursesTile extends StatelessWidget {
  final main_courses Courses;

  CoursesTile({required this.Courses});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        
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
        child: Column(
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
                  child: Text(Courses.Description, style: TextStyle(color:Colors.grey),),
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
                      padding: const EdgeInsets.only(left:15.0),
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
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
