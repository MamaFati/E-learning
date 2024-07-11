import 'package:flutter/material.dart';

class  wishListPage extends StatefulWidget {
  const wishListPage({super.key});

  @override
  State<wishListPage> createState() => _myCourseState();
}

class _myCourseState extends State<wishListPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Your Wishlist"),
    );
  }
}
