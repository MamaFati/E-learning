import 'package:flutter/material.dart';
class myCourse extends StatefulWidget {
  const myCourse({super.key});

  @override
  State<myCourse> createState() => _myCourseState();
}

class _myCourseState extends State<myCourse> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("My courses"),
    );
  }
}