import 'package:flutter/material.dart';

class CustomTextArea extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final TextEditingController? controller;
  final bool obscureText;

  const CustomTextArea({
    required this.hintText,
    this.icon,
    this.controller,
    this.obscureText = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: icon != null
              ? Theme(
                  data: Theme.of(context).copyWith(
                    iconTheme: IconThemeData(color: Colors.grey),
                  ),
                  child: Icon(icon),
                )
              : null,
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 12),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
        ),
      ),
    );
  }
}
