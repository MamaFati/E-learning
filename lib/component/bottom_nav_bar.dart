import 'package:e_learning/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// ignore: must_be_immutable
class MyButtomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyButtomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightCyan,
      ),
      //  backgroundColor: AppColors.lightCyan,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: GNav(
          haptic: true, // haptic feedback
          tabBorderRadius: 15,
          tabActiveBorder: Border.all(
              color: const Color.fromARGB(141, 0, 0, 0),
              width: 1), // tab button border

          curve: Curves.easeOutExpo, // tab animation curves
          duration: Duration(milliseconds: 900), // tab animation duration
          gap: 8,
          color: Colors.grey[800],
          activeColor: Colors.black,
          iconSize: 30,
          tabBackgroundColor: Colors.white.withOpacity(0.1),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(icon: Icons.home, text: "Home"),
            // Individual course
            GButton(icon: Icons.menu_book, text: "My Course"),
            GButton(icon: Icons.favorite_border_outlined, text: "Wishlist"),
            GButton(icon: Icons.search, text: "Search"),
            // profile page
            GButton(icon: Icons.account_circle, text: "Account"),
          ],
        ),
      ),
    );
  }
}
