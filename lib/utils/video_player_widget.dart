import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;
  final VoidCallback onChapterComplete;

  VideoPlayerWidget({required this.videoUrl, required this.onChapterComplete});

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  bool _isPlaying = true;
  bool _isMuted = false;
  bool _isFullscreen = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      })
      ..addListener(() {
        if (_controller.value.position == _controller.value.duration) {
          widget.onChapterComplete();
        }
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
      } else {
        _controller.play();
      }
      _isPlaying = _controller.value.isPlaying;
    });
  }

  void _toggleMute() {
    setState(() {
      _isMuted = !_isMuted;
      _controller.setVolume(_isMuted ? 0.0 : 1.0);
    });
  }

  void _toggleFullscreen() {
    setState(() {
      _isFullscreen = !_isFullscreen;
    });
    if (_isFullscreen) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    } else {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    }
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
              _buildControls(),
            ],
          )
        : Center(child: CircularProgressIndicator());
  }

  Widget _buildControls() {
    return Container(
      color: Colors.black54,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          VideoProgressIndicator(_controller, allowScrubbing: true),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                  color: Colors.white,
                ),
                onPressed: _togglePlayPause,
              ),
              IconButton(
                icon: Icon(
                  _isMuted ? Icons.volume_off : Icons.volume_up,
                  color: Colors.white,
                ),
                onPressed: _toggleMute,
              ),
              IconButton(
                icon: Icon(
                  _isFullscreen ? Icons.fullscreen_exit : Icons.fullscreen,
                  color: Colors.white,
                ),
                onPressed: _toggleFullscreen,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
