import 'package:e_learning/component/bottom_nav_bar.dart';
import 'package:e_learning/pages/accountPage.dart';
import 'package:e_learning/pages/courses.dart';
import 'package:e_learning/pages/myCourses.dart';
import 'package:e_learning/pages/search_page.dart';
import 'package:e_learning/pages/wishlist.dart';
import 'package:e_learning/theme/theme_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String userName;
  HomePage({super.key, required this.userName});

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
    SearchPage(),
    ProfilePage(),
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightCyan,
      bottomNavigationBar: MyButtomNavBar(
        onTabChange: (index) => navigatedBottomBar(index),
      ),
      body: _pages[_selectedIndex],
      appBar: AppBar(
        title: Text("Hello : ${widget.userName}"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications_active),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ],
        backgroundColor: AppColors.lightCyan,
      ),
    );
  }
}
