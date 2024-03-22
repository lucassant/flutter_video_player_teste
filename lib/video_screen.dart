import 'package:flutter/material.dart';
import 'package:video_player_teste/video_player_teste.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Video Player'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          child: const Text('Play Video'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VideoPage(),
                ));
          },
        ),
      ),
    ));
  }
}
