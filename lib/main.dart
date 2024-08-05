import 'package:e_learning/models/chapterModelRepo.dart';
import 'package:e_learning/models/coursesModel.dart';
import 'package:e_learning/pages/welcome_page.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Coursesmodel(),
        ),
        ChangeNotifierProvider(
          create: (context) => CourseRepository(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: welcomePage(),
        theme: ThemeData(
          textTheme: GoogleFonts.merriweatherTextTheme(),
        ),
      ),
    );
  }
}
