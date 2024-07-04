import 'package:flutter/material.dart';

class CustomTextArea extends StatelessWidget {
  
  final String hintText;
  final int maxLines;

  const CustomTextArea({
    
    required this.hintText,
    this.maxLines = 1,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: TextField(
          // controller: controller,
          maxLines: maxLines,
          decoration: InputDecoration(
            // border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.grey,

                // width: 1.0,
              ),
            
            ),
          ),
        ));
    // );
  }
}
