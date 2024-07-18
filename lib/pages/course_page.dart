import 'package:e_learning/utils/video_player_widget.dart';
import 'package:flutter/material.dart';
// import 'video_player_widget.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Course Video")),
      body: Center(
        child: VideoPlayerWidget(
          videoUrl:
              'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
        ),
      ),
    );
  }
}
