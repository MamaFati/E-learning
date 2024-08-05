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
      price: 0.00,
    ),
    main_courses(
      courseName: "Become A Digital Marketer, With Mentorship ",
      ImagePath:
          'lib/assets/images1/Social-Media-Digital-Marketing-PNG-Images.png',
      Description: "IBM Professional Certificate",
      rating: 4.9,
      isFree: false,
      price: 50.00,
    ),
    main_courses(
      courseName: "Fundermentals Of Cyber security",
      ImagePath: 'lib/assets/images1/Digital-Cyber-Security-PNG-Picture.png',
      Description: "Google Professional Certificate",
      rating: 4.6,
      isFree: true,
      price: 0.00,
    ),
    main_courses(
      courseName: "Design Learning Innovation (Graphic Design)",
      ImagePath: 'lib/assets/images1/Graphic-Design-Download-PNG.png',
      Description: "IBM Professional Certificate",
      rating: 4.8,
      isFree: true,
      price: 0.00,
    ),
  ];

  List<main_courses> recommendedCourses = [
    main_courses(
      courseName: "Advanced Data Science",
      ImagePath: 'lib/assets/images1/Ellipse 1 (1).png',
      Description: "Coursera Professional Certificate",
      rating: 4.7,
      isFree: false,
      price: 90.00,
    ),
    main_courses(
      courseName: "Introduction to Machine Learning",
      ImagePath: 'lib/assets/images1/Ellipse 1 (2).png',
      Description: "edX Professional Certificate",
      rating: 4.5,
      isFree: true,
      price: 0.00,
    ),
    main_courses(
      courseName: "Introduction to AI",
      ImagePath: 'lib/assets/images1/Ellipse 1 (3).png',
      Description: "edX Professional Certificate",
      rating: 4.5,
      isFree: true,
      price: 0.00,
    ),
    main_courses(
      courseName: "Data Structures and Algorithms",
      ImagePath: 'lib/assets/images1/Ellipse 1 (4).png',
      Description: "edX Professional Certificate",
      rating: 4.5,
      isFree: true,
      price: 0.00,
    ),
    main_courses(
      courseName: "Database Management Systems",
      ImagePath: 'lib/assets/images1/Ellipse 1 (5).png',
      Description: "edX Professional Certificate",
      rating: 4.5,
      isFree: false,
      price: 10.00,
    ),
    main_courses(
      courseName: "Network Security",
      ImagePath: 'lib/assets/images1/Ellipse 1.png',
      Description: "edX Professional Certificate",
      rating: 4.5,
      isFree: true,
      price: 0.00,
    ),
  ];

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
}
