import 'package:flutter/material.dart';

class squareTile extends StatelessWidget {
  final String imagePath;
  const squareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        child: Image.asset(
          imagePath,
          height: 50,
        ),
      ),
    );
  }
}
