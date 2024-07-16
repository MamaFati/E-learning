import 'package:e_learning/component/bottom_nav_bar.dart';
import 'package:e_learning/pages/accountPage.dart';
import 'package:e_learning/pages/courses.dart';
import 'package:e_learning/pages/myCourses.dart';
import 'package:e_learning/pages/wishlist.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // This selected buttom will controll the app
  int _selectedIndex = 0;
  // This section will update the our selected index
  // When the user taps the bottom
  void navigatedBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // page to display
  final List<Widget> _pages = [
    coursesPage(),
    myCourse(),
    WishListPage(),
    profilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyButtomNavBar(
        onTabChange: (index) => navigatedBottomBar(index),
      ),
      body: _pages[_selectedIndex],
      appBar: AppBar(
        backgroundColor: Color(0xFFFBFFFF),
      ),
    );
  }
}
