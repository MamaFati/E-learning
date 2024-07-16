import 'package:e_learning/models/course.dart';
import 'package:e_learning/models/coursesModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WishListPage extends StatefulWidget {
  const WishListPage({super.key});

  @override
  State<WishListPage> createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
  void removeCoursesFromWishList(main_courses course) {
    Provider.of<courseModel>(context, listen: false)
        .removeCoursesFromWishList(course);
  }

  @override
  Widget build(BuildContext context) {
    var wishlist = Provider.of<courseModel>(context).userWish;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFBFFFF), // Light cyan
              Color(0xFFFFFFFF), // White
              Color(0xFF9BE5DD), // Light turquoise
            ],
            end: Alignment.bottomCenter,
            begin: Alignment.topLeft,
          ),
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                "My WishList",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: wishlist.length,
                  itemBuilder: (context, index) {
                    main_courses course = wishlist[index];
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5.0,
                              spreadRadius: 2.0,
                              offset: Offset(0, 2),
                            ),
                          ]  ),
                      margin: EdgeInsets.only(bottom: 10),
                      child: ListTile(
                        leading: Image.asset(course.ImagePath),
                        title: Text(course.courseName),
                        subtitle: Text(course.isFree ? 'Free' : 'Paid'),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () => removeCoursesFromWishList(course),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
