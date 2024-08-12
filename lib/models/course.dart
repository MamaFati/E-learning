class main_courses {
  final String courseName;
  final String ImagePath;
  final String Description;
  final bool isFree;
  final double? price;
  final double rating;
  double progress;

  main_courses({
    required this.courseName,
    required this.ImagePath,
    this.rating = 0.0,
    required this.isFree,
    required this.Description,
    this.price,
    this.progress = 0.00,
  });
}
