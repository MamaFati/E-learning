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
        ImagePath: 'lib/assets/images1/Social-Media-Digital-Marketing-PNG-Images.png',
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
        )
  ];
  List<main_courses> getCoursesList() {
    return courseShop;
  }
}
