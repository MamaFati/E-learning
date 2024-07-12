import "package:flutter/material.dart";

// ignore: must_be_immutable
class my_buttom extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  my_buttom({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Color(0xFF9BE5DD),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
}
