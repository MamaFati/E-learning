import 'package:e_learning/theme/theme_data.dart';
import 'package:flutter/material.dart';
 

class myCourse extends StatefulWidget {
  const myCourse({super.key});

  @override
  State<myCourse> createState() => _myCourseState();
}

class _myCourseState extends State<myCourse> {
  @override
  Widget build(BuildContext context) {
    // var wishlist = Provider.of<courseModel>(context).getWishCart();
    // Todo edit this UI to get the number of courses the user have started and display them on the timeline
    // final List<Exercise> exercises = [
    //   Exercise(
    //     name: 'Push-ups',
    //     calories: 100,
    //     minutes: 10,
    //     isCompleted: true,
    //   ),
    //   Exercise(
    //     name: 'Jumping Jacks',
    //     calories: 80,
    //     minutes: 5,
    //     isCompleted: false,
    //   ),
    //   Exercise(
    //     name: 'Squats',
    //     calories: 120,
    //     minutes: 15,
    //     isCompleted: false,
    //   ),
    // ];
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppGradients.mainGradient,
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("My Courses"),
                // child: ListView.builder(
                //   itemCount: exercises.length,
                //   itemBuilder: (context, index) {
                //     return MyTimeline(
                //       isFirst: index == 0,
                //       isLast: index == exercises.length - 1,
                //       exercise: exercises[index],
                //     );
                //   },
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
