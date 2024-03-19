import 'package:flutter/material.dart';
import 'package:video_player_teste/video_player_teste.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoViewerController _meuVideoController;

  @override
  void initState() {
    super.initState();
    _meuVideoController = VideoViewerControllerImpl(
      videoUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Video Player'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: 200,
          width: double.infinity,
          child: _meuVideoController.videoPlayer,
        ),
      ),
    ));
  }
}
