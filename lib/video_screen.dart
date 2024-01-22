import 'package:flutter/material.dart';
import 'package:video_player_teste/video_player_teste.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  bool _isLoading = true;
  late MeuVideoController _meuVideoController;

  @override
  void initState() {
    super.initState();
    _meuVideoController = MeuVideoControllerImpl(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      autoPlay: true,
      looping: false,
      showControls: true,
      showOptions: false,
    );

    _meuVideoController.chewieController.videoPlayerController.addListener(() {
      if (_meuVideoController
          .chewieController.videoPlayerController.value.isInitialized) {
        setState(() {
          _isLoading = false;
        });
      } else {
        setState(() {
          _isLoading = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _isLoading
            ? const CircularProgressIndicator(
                color: Colors.white,
              )
            : MeuVideoWidget(
                meuVideoController: _meuVideoController,
              ),
      ),
    ));
  }
}
