// import 'package:flutter/material.dart';
// import 'package:timelines/timelines.dart';

// class MyTimeline extends StatelessWidget {
//   final bool isFirst;
//   final bool isLast;
//   final Exercise exercise;

//   const MyTimeline({
//     super.key,
//     required this.isFirst,
//     required this.isLast,
//     required this.exercise,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 15.0),
//       child: TimelineTile(
//         isFirst: isFirst,
//         isLast: isLast,
//         indicatorStyle: IndicatorStyle(
//           width: 30,
//           height: 30,
//           color: exercise.isCompleted ? Colors.green : Colors.grey,
//           indicator: Container(
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: exercise.isCompleted ? Colors.green : Colors.grey,
//             ),
//             child: exercise.isCompleted
//                 ? const Center(child: Icon(Icons.check, color: Colors.white))
//                 : const SizedBox.shrink(), // Correct use of SizedBox.shrink()
//           ),
//         ),
//         afterLineStyle: LineStyle(
//           thickness: 1,
//           color: exercise.isCompleted ? Colors.green : Colors.grey,
//         ),
//         beforeLineStyle: LineStyle(
//           thickness: 1,
//           color: exercise.isCompleted ? Colors.green : Colors.grey,
//         ),
//         endChild: ExerciseCard(exercise: exercise),
//       ),
//     );
//   }
// }

// class ExerciseCard extends StatelessWidget {
//   final Exercise exercise;

//   const ExerciseCard({super.key, required this.exercise});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4, // Add elevation for a better visual effect
//       child: ListTile(
//         leading: const Icon(Icons.fitness_center),
//         title: Text(exercise.name),
//         subtitle: Text('${exercise.calories} kcal | ${exercise.minutes} min'),
//       ),
//     );
//   }
// }

// class Exercise {
//   final String name;
//   final int calories;
//   final int minutes;
//   bool isCompleted;

//   Exercise({
//     required this.name,
//     required this.calories,
//     required this.minutes,
//     this.isCompleted = false,
//   });
// }
