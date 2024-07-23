import 'package:e_learning/models/course.dart';
import 'package:e_learning/models/coursesModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timelines/timelines.dart';

class myCourse extends StatefulWidget {
  const myCourse({super.key});

  @override
  State<myCourse> createState() => _myCourseState();
}

class _myCourseState extends State<myCourse> {
  @override
  Widget build(BuildContext context) {
    var wishlist = Provider.of<courseModel>(context).getWishCart();

    return Scaffold(
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
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: wishlist.length,
                  itemBuilder: (context, index) {
                    main_courses course = wishlist[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5.0,
                            spreadRadius: 2.0,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.only(bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Image.asset(course.ImagePath),
                            title: Text(course.courseName),
                            subtitle: Text(course.Description),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Course Progress",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          _buildGrowthTimeline(course),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGrowthTimeline(main_courses course) {
    List<Milestone> milestones = [
      Milestone(
        title: "Start Course",
        description: "Introduction to ${course.courseName}",
        date: "2024-01-01",
        icon: Icons.play_circle_fill,
      ),
      Milestone(
        title: "First Module",
        description: "Completed first module of ${course.courseName}",
        date: "2024-01-15",
        icon: Icons.check_circle,
      ),
      Milestone(
        title: "Midterm Exam",
        description: "Passed the midterm exam",
        date: "2024-02-01",
        icon: Icons.school,
      ),
      Milestone(
        title: "Final Project",
        description: "Started working on the final project",
        date: "2024-03-01",
        icon: Icons.work,
      ),
      Milestone(
        title: "Course Completion",
        description: "Completed ${course.courseName}",
        date: "2024-04-01",
        icon: Icons.grade,
      ),
    ];

    return FixedTimeline.tileBuilder(
      builder: TimelineTileBuilder.connected(
        contentsBuilder: (context, index) {
          var milestone = milestones[index];
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  milestone.title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(milestone.description),
                SizedBox(height: 4),
                Text(milestone.date,
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
          );
        },
        indicatorBuilder: (_, index) {
          var milestone = milestones[index];
          return DotIndicator(
            color: Colors.blue,
            child: Icon(milestone.icon, color: Colors.white, size: 16),
          );
        },
        connectorBuilder: (_, index, ___) =>
            SolidLineConnector(color: Colors.blue),
        itemCount: milestones.length,
      ),
    );
  }
}

class Milestone {
  final String title;
  final String description;
  final String date;
  final IconData icon;

  Milestone({
    required this.title,
    required this.description,
    required this.date,
    required this.icon,
  });
}
