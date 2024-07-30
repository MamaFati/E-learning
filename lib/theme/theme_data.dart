// lib/constants/gradients.dart
import 'package:flutter/material.dart';

class AppGradients {
  static const LinearGradient mainGradient = LinearGradient(
    colors: [
      Color(0xFFFBFFFF), // Light cyan
      Color(0xFFFFFFFF), // White
      Color(0xFF9BE5DD), // Light turquoise
    ],
    end: Alignment.bottomCenter,
    begin: Alignment.topLeft,
  );
     
  
}
class AppColors {
  static const Color lightTurquoise = Color(0xFF9BE5DD); // Light turquoise
  static const Color lightCyan = Color(0xFFFBFFFF); // Light cyan
  static const Color white = Color(0xFFFFFFFF); // White
}
