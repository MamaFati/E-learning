import 'package:flutter/material.dart';
import 'package:e_learning/models/course.dart';

class courseModel extends ChangeNotifier {
  List<main_courses> courseShop = [
    main_courses(
      courseName: "Full Stack software Developer with a Portfolio",
      ImagePath: 'lib/assets/images1/Web-Development-Download-PNG.png',
      Description: "Meta Professional Certificate",
      rating: 4.8,
      isFree: true,
    ),
    main_courses(
      courseName: "Become A Digital Marketer, With Mentorship ",
      ImagePath:
          'lib/assets/images1/Social-Media-Digital-Marketing-PNG-Images.png',
      Description: "IBM Professional Certificate",
      rating: 4.9,
      isFree: false,
    ),
    main_courses(
      courseName: "Fundermentals Of Cyber security",
      ImagePath: 'lib/assets/images1/Digital-Cyber-Security-PNG-Picture.png',
      Description: "Google Professional Certificate",
      rating: 4.6,
      isFree: true,
    ),
    main_courses(
      courseName: "Design Learning Innovation (Graphic Design)",
      ImagePath: 'lib/assets/images1/Graphic-Design-Download-PNG.png',
      Description: "IBM Professional Certificate",
      rating: 4.8,
      isFree: true,
    ),
  ];
  // if isAllCoursesPage Display this
  List<main_courses> getCoursesList(bool isAllCoursesPage) {
    if (isAllCoursesPage) {
      return [
        ...courseShop,
        main_courses(
          courseName: "Advanced Data Science",
          ImagePath: 'lib/assets/images1/Ellipse 1 (1).png',
          Description: "Coursera Professional Certificate",
          rating: 4.7,
          isFree: false,
        ),
        main_courses(
          courseName: "Introduction to Machine Learning",
          ImagePath: 'lib/assets/images1/Ellipse 1 (2).png',
          Description: "edX Professional Certificate",
          rating: 4.5,
          isFree: true,
        ),
        main_courses(
          courseName: "Introduction to Machine Learning",
          ImagePath: 'lib/assets/images1/Ellipse 1 (3).png',
          Description: "edX Professional Certificate",
          rating: 4.5,
          isFree: true,
        ),
        main_courses(
          courseName: "Introduction to Machine Learning",
          ImagePath: 'lib/assets/images1/Ellipse 1 (4).png',
          Description: "edX Professional Certificate",
          rating: 4.5,
          isFree: true,
        ),
        main_courses(
          courseName: "Introduction to Machine Learning",
          ImagePath: 'lib/assets/images1/Ellipse 1 (5).png',
          Description: "edX Professional Certificate",
          rating: 4.5,
          isFree: true,
        ),
        main_courses(
          courseName: "Introduction to Machine Learning",
          ImagePath: 'lib/assets/images1/Ellipse 1.png',
          Description: "edX Professional Certificate",
          rating: 4.5,
          isFree: true,
        ),
      ];
    } else {
      return courseShop;
    }
  }

  // void addCourse(main_courses course) {
  //   courseShop.add(course);
  //   notifyListeners();
  // }
  // get list of all couses
  List<main_courses> userWish = [];
  // get cart
  List<main_courses> getWishList() {
    return getCoursesList(true);
  }

  List<main_courses> getWishCart() {
    return userWish;
  }

// Add Courses to whishlist
  void addCoursesToWishList(main_courses course) {
    userWish.add(course);
    notifyListeners();
  }

// remove items from cart
  void removeCoursesFromWishList(main_courses course) {
    userWish.remove(course);
    notifyListeners();
  }
  // get selected courses
  void getSelectedCourses(main_courses course) {
    userWish.add(course);
    notifyListeners();
  }
}
