import 'package:e_learning/models/chapterModel.dart';
import 'package:flutter/material.dart';
// import 'package:e_learning/models/course_model.dart'; // Import your Course model

class CourseRepository extends ChangeNotifier {
  // Example course data
  Course getCourse() {
    return Course(
      videoUrl: 'https://example.com/main_video.mp4',
      chapters: [
        "Chapter 1: Introduction",
        "Chapter 2: Intoduction to Html",
        "Chapter 3: Inroduction to Css",
        "Chapter 4: Inroduction to Javascript",
        "Chapter 5: Inroduction python",
        "Chapter 6:  Django",
      ],
      videoUrls: [
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
        'https://example.com/advanced_flutter.mp4',
        'https://example.com/advanced_flutter.mp4',
        'https://example.com/advanced_flutter.mp4',
        'https://example.com/advanced_flutter.mp4',
      ],
      completed: [false, false, false,false,false,false],
    );
  }

  // You can add more methods to get different courses or fetch from an API
}
