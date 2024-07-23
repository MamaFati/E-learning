import 'package:e_learning/models/chapterModel.dart';
import 'package:flutter/material.dart';
import 'package:e_learning/utils/chaptersTab.dart';
import 'package:e_learning/utils/fileTap.dart';
import 'package:e_learning/pages/discussionsTab.dart';

class CoursePage extends StatelessWidget {
  final Course course;

  CoursePage({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Course Video"),
          bottom: TabBar(
            tabs: [
              Tab(text: "Chapters"),
              Tab(text: "Files"),
              Tab(text: "Discussions"),
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
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
          child: TabBarView(
            children: [
              ChaptersTab(
                chapters: course.chapters,
                videoUrls: course.videoUrls,
                completed: course.completed,
              ),
              fileTap(),
              discussionsTab(),
            ],
          ),
        ),
      ),
    );
  }
}
