import 'package:flutter/material.dart';

class numField extends StatelessWidget {
  const numField({super.key});

  @override
  Widget build(BuildContext context) {
      final myController = TextEditingController();
    return Container(
             
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: myController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                 filled: true,
            fillColor: Colors.white,
              
                // labelText: 'Enter a number',
              ),
            ),
          ),
          width: 70,
        );
      // ),
    // );
  }
}