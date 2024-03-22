import 'package:flutter/material.dart';
import 'package:video_player_teste/video_player_teste.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  final String videoUrl =
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4';
  late final VideoViewerController _videoController;

  @override
  void initState() {
    _videoController = VideoViewerControllerImpl(
      videoUrl: videoUrl,
      fullScreen: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          height: 200,
          width: double.infinity,
          child: _videoController.videoPlayer,
        ),
      ),
    );
  }
}
