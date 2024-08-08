// sign_in_link.dart
import 'package:flutter/material.dart';

class SignInLink extends StatelessWidget {
  final VoidCallback onTap; // Callback for handling tap
  final String text; // Text to display
  final TextStyle style; // TextStyle for customizing text

  const SignInLink({
    required this.onTap,
    required this.text,
    this.style = const TextStyle(
      decoration: TextDecoration.underline,
      color: Colors.blue,
    ),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
