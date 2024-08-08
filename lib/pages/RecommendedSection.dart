import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_learning/models/coursesModel.dart';
import 'package:e_learning/component/Recommende_courses_tile.dart';

class RecommendedCoursesSection extends StatefulWidget {
  const RecommendedCoursesSection({super.key});

  @override
  _RecommendedCoursesSectionState createState() =>
      _RecommendedCoursesSectionState();
}

class _RecommendedCoursesSectionState extends State<RecommendedCoursesSection> {
  bool showAll = false;

  @override
  Widget build(BuildContext context) {
    final courseModel = Provider.of<Coursesmodel>(context);
    final recommendedCourses = showAll
        ? courseModel.getRecommendedCourses()
        : courseModel.getLimitedRecommendedCourses(4);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'Recommended',
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          //
          if (!showAll)
            Center(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    showAll = true;
                  });
                },
                child: Text('All Courses'),
              ),
            ),
        ]),
        Container(
          height: 400,
          child: GridView.builder(
            padding: EdgeInsets.all(8.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns
              childAspectRatio: 1 / 2, // Aspect ratio of each item
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemCount: recommendedCourses.length,
            itemBuilder: (context, index) {
              return Container(
                child: RecommendeCoursesTile(
                  course: recommendedCourses[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
