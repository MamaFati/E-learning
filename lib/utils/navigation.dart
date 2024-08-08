import 'package:e_learning/models/course.dart';
import 'package:e_learning/pages/detailedPages/digitalMarketingPage.dart';
import 'package:e_learning/pages/detailedPages/fullStackPage.dart';
import 'package:flutter/material.dart';
class Navigation{
  static void navigateToDetailPage(BuildContext context, main_courses course) {
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
}
