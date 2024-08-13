import 'package:e_learning/models/course.dart';
import 'package:e_learning/pages/detailedPages/digitalMarketingPage.dart';
import 'package:e_learning/pages/detailedPages/fullStackPage.dart';
import 'package:e_learning/pages/mainCoursesPages/fullStackDevalopmetCourses.dart';
import 'package:flutter/material.dart';

class Navigation {
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

  //
  static void navigateTomainCoursesPage(BuildContext context, main_courses course) {
    Widget mainCoursesPage;
    switch (course.courseName) {
      case 'Full Stack software Developer with a Portfolio':
        mainCoursesPage = FullStackCourses(course: course);
        break;
      case 'Become A Digital Marketer, With Mentorship ':
         mainCoursesPage = FullStackCourses(course: course);
        break;
      case 'Fundermentals Of Cyber security':
          mainCoursesPage = FullStackCourses(course: course);
        break;
      default:
          mainCoursesPage =
            FullStackCourses(course: course); // Default to web development page
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => mainCoursesPage),
    );
  }
}
