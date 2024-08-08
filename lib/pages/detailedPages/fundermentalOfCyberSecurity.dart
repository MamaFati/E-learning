import 'package:e_learning/component/bottoms.dart';
import 'package:e_learning/component/payment_screen.dart';
import 'package:e_learning/component/paypalpayment_screen.dart';
import 'package:e_learning/models/course.dart';
import 'package:e_learning/theme/theme_data.dart';
import 'package:e_learning/utils/courses_brief.dart';
import 'package:e_learning/utils/fqa_tile.dart';
import 'package:flutter/material.dart';

class fundermentalOfCyberPage extends StatelessWidget {
  final main_courses course;
  fundermentalOfCyberPage({super.key, required this.course});
  // frequently asked dropdwon
  final List<FAQ> faqList = [
    FAQ(
      question: "What is this course about?",
      answer:
          "This course covers full stack development including front-end and back-end technologies.",
    ),
    FAQ(
      question: "How long is the course?",
      answer: "The course duration is 12 weeks.",
    ),
    FAQ(
      question: "Is there a certification?",
      answer: "Yes, you will receive a certification upon completion.",
    ),
     
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course.courseName),
        backgroundColor: AppColors.lightCyan,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppGradients.mainGradient,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(course.ImagePath),
                SizedBox(height: 16),
                Text(
                  course.courseName,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  course.Description,
                  style: TextStyle(fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "About this course",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tempor lorem at bibendum mattis. In hac habitasse platea dictumst.",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rating: (${course.rating})',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Free: ${course.isFree ? "Yes" : "No"}',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                CoursesBrief(
                  totalTiming: '120 hours',
                  totalVideos: 70,
                  accessibility: 'Lifetime Access',
                  uploadDate: '2023-1-03',
                ),
                SizedBox(height: 16),
                Text(
                  "Frequently Asked Questions",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                FAQList(faqs: faqList),
                CustomButton(
                  text: "Pay",
                  color: const Color.fromARGB(255, 1, 138, 156),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaymentOptionsScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
