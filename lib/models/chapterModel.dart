class Course {
  final String videoUrl;
  final List<String> chapters;
  final List<String> videoUrls;
  final List<bool> completed;

  Course({
    required this.videoUrl,
    required this.chapters,
    required this.videoUrls,
    required this.completed,
  });
}
