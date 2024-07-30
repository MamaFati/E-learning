import 'package:e_learning/theme/theme_data.dart';
import 'package:flutter/material.dart';

class SlideTile extends StatelessWidget {
  final String imagepath;
  final String text;
  final String header;

  // Constructor
  SlideTile({
    super.key,
    required this.header,
    required this.text,
    required this.imagepath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightCyan,
      ),
      padding: const EdgeInsets.all(20.0), // Add padding if needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Display image
          Image.asset(
            imagepath,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
         
          // Display header
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              header,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0, // Set font size for the header
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 5.0), // Add space between header and text
          // Display text
          Text(
            text,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0, // Set font size for the description
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
