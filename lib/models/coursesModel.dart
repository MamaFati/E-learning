import 'package:flutter/material.dart';
import 'package:e_learning/models/course.dart';

class Coursesmodel extends ChangeNotifier {
  List<main_courses> courseShop = [
    main_courses(
      courseName: "Full Stack software Developer with a Portfolio",
      ImagePath: 'lib/assets/images1/Web-Development-Download-PNG.png',
      Description: "Meta Professional Certificate",
      rating: 4.8,
      isFree: true,
      price: 0,
    ),
    main_courses(
      courseName: "Become A Digital Marketer, With Mentorship ",
      ImagePath:
          'lib/assets/images1/Social-Media-Digital-Marketing-PNG-Images.png',
      Description: "IBM Professional Certificate",
      rating: 4.9,
      isFree: false,
      price: 50,
    ),
    main_courses(
      courseName: "Fundermentals Of Cyber security",
      ImagePath: 'lib/assets/images1/Digital-Cyber-Security-PNG-Picture.png',
      Description: "Google Professional Certificate",
      rating: 4.6,
      isFree: true,
      price: 0,
    ),
    main_courses(
      courseName: "Design Learning Innovation (Graphic Design)",
      ImagePath: 'lib/assets/images1/Graphic-Design-Download-PNG.png',
      Description: "IBM Professional Certificate",
      rating: 4.8,
      isFree: true,
      price: 0,
    ),
  ];

  List<main_courses> recommendedCourses = [
    main_courses(
      courseName: "Advanced Data Science",
      ImagePath: 'lib/assets/images1/Ellipse 1 (1).png',
      Description: "Coursera Professional Certificate",
      rating: 4.7,
      isFree: false,
      price: 90,
    ),
    main_courses(
      courseName: "Introduction to Machine Learning",
      ImagePath: 'lib/assets/images1/Ellipse 1 (2).png',
      Description: "edX Professional Certificate",
      rating: 4.5,
      isFree: true,
      price: 0,
    ),
    main_courses(
      courseName: "Introduction to AI",
      ImagePath: 'lib/assets/images1/Ellipse 1 (3).png',
      Description: "edX Professional Certificate",
      rating: 4.5,
      isFree: true,
      price: 0,
    ),
    main_courses(
      courseName: "Data Structures and Algorithms",
      ImagePath: 'lib/assets/images1/Ellipse 1 (4).png',
      Description: "edX Professional Certificate",
      rating: 4.5,
      isFree: true,
      price: 0,
    ),
    main_courses(
      courseName: "Database Management Systems",
      ImagePath: 'lib/assets/images1/Ellipse 1 (5).png',
      Description: "edX Professional Certificate",
      rating: 4.5,
      isFree: false,
      price: 10,
    ),
    main_courses(
      courseName: "Network Security",
      ImagePath: 'lib/assets/images1/Ellipse 1.png',
      Description: "edX Professional Certificate",
      rating: 4.5,
      isFree: true,
      price: 0,
    ),
  ];
  // Get user courses
  List<main_courses> userCourses = [
    // Example courses the user is involved with, you should replace this with actual user data
    main_courses(
      courseName: "Full Stack software Developer with a Portfolio",
      ImagePath: 'lib/assets/images1/Web-Development-Download-PNG.png',
      Description: "Meta Professional Certificate",
      rating: 4.8,
      isFree: true,
      price: 0,
      progress: 0.5, // Example progress value
    ),
    // Add more courses as needed
  ];
  List<main_courses> getUserCourses() {
    // Return courses that the user is involved in
    return userCourses;
  }

  // if isAllCoursesPage Display this
  List<main_courses> getCoursesList(bool isAllCoursesPage) {
    if (isAllCoursesPage) {
      return courseShop + recommendedCourses;
    } else {
      return courseShop;
    }
  }

  // get Limit
  List<main_courses> getLimitedRecommendedCourses(int limit) {
    return recommendedCourses.take(limit).toList();
  }

  // Get list of recommended courses
  List<main_courses> getRecommendedCourses() {
    return recommendedCourses;
  }

  // List for user wish list
  List<main_courses> userWish = [];

  // Get wishlist
  List<main_courses> getWishList() {
    return userWish;
  }

  // Add courses to wishlist
  void addCoursesToWishList(main_courses course) {
    userWish.add(course);
    notifyListeners();
  }

  // Remove courses from wishlist
  void removeCoursesFromWishList(main_courses course) {
    userWish.remove(course);
    notifyListeners();
  }

  // Get selected courses
  void getSelectedCourses(main_courses course) {
    userWish.add(course);
    notifyListeners();
  }

  // Update course progress
  void updateCourseProgress(main_courses course, double newProgress) {
    final index =
        courseShop.indexWhere((c) => c.courseName == course.courseName);
    if (index != -1) {
      courseShop[index].progress = newProgress;
      notifyListeners();
    }
  }

  // Get progress of a specific course
  double getCourseProgress(main_courses course) {
    final c = courseShop.firstWhere((c) => c.courseName == course.courseName);
    return c.progress;
  }
}
