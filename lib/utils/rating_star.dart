// rating_stars.dart
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingStars extends StatelessWidget {
  final double initialRating;
  final double itemSize;
  final void Function(double)? onRatingUpdate;

  RatingStars({
    required this.initialRating,
    this.itemSize = 20.0,
    this.onRatingUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: initialRating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: itemSize,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: onRatingUpdate ?? (rating) => print(rating),
    );
  }
}
