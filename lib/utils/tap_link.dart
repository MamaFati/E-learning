// sign_in_link.dart
import 'package:flutter/material.dart';

class SignInLink extends StatelessWidget {
  final VoidCallback onTap; // Callback for handling tap
  final String text; // Text to display

  const SignInLink({
    required this.onTap,
    required this.text,
    Key? key, required TextStyle style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: Colors.blue,
        ),
      ),
    );
  }
}
