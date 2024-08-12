import 'package:flutter/material.dart';

class AddToWishlistButton extends StatelessWidget {
  final void Function()? onTap;

  AddToWishlistButton({this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Icon(Icons.favorite_border, color: Colors.red),
      ),
    );
  }
}
