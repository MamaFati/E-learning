import 'package:e_learning/models/chapterModel.dart';
import 'package:e_learning/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:e_learning/utils/chapters_tab.dart';
import 'package:e_learning/utils/fileTap.dart';
import 'package:e_learning/pages/discussionsTab.dart';

class CoursePage extends StatelessWidget {
  final Course course;

  const CoursePage({Key? key, required this.course}) : super(key: key);

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
            gradient: AppGradients.mainGradient
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
