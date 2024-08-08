import 'package:e_learning/theme/theme_data.dart';
import 'package:flutter/material.dart';

class CoursesBrief extends StatelessWidget {
  final String totalTiming;
  final int totalVideos;
  final String accessibility;
  final String uploadDate;

  const CoursesBrief({
    Key? key,
    required this.totalTiming,
    required this.totalVideos,
    required this.accessibility,
    required this.uploadDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.lightCyan,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Courses Brief ", style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          _buildInfoRow(Icons.schedule, 
          'Total Timing: $totalTiming'),
          SizedBox(height: 8),
          _buildInfoRow(
              Icons.video_library, 
              'Total Videos: $totalVideos'),
          _buildInfoRow(
              Icons.accessibility_new, 
              'Accessibility: $accessibility'),
          SizedBox(height: 8),
          _buildInfoRow(
              Icons.calendar_today, 
              'Uploaded on: $uploadDate'),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return  Row(
      children: [
        Icon(icon, size: 20, color: Colors.blue),
        SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(fontSize: 13),
        ),
      ],
    );
  }
}
