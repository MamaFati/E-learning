import 'package:flutter/material.dart';
import 'package:e_learning/utils/video_player_widget.dart';

class ChaptersTab extends StatefulWidget {
  final List<String> chapters;
  final List<String> videoUrls;
  final List<bool> completed;

  const ChaptersTab({
    super.key,
    required this.chapters,
    required this.videoUrls,
    required this.completed,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ChaptersTabState createState() => _ChaptersTabState();
}

class _ChaptersTabState extends State<ChaptersTab> {
  late List<bool> _completed;

  @override
  void initState() {
    super.initState();
    // Initialize the internal state with the values from the widget
    _completed = List.from(widget.completed);
  }

  void markCompleted(int index) {
    setState(() {
      _completed[index] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Display the first video initially or any default behavior
        VideoPlayerWidget(
          videoUrl: widget.videoUrls[0],
          onChapterComplete: () => markCompleted(0),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: widget.chapters.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(widget.chapters[index]),
                trailing: _completed[index]
                    ? Icon(Icons.check, color: Colors.green)
                    : null,
                onTap: () {
                  // Play the corresponding video
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      content: VideoPlayerWidget(
                        videoUrl: widget.videoUrls[index],
                        onChapterComplete: () => markCompleted(index),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
