import 'package:chewie/chewie.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:video_player_teste/adapters/video_handler_adapter.dart';

class ChewieAdapterImpl extends VideoHandlerAdapter {
  final ChewieController chewieController;

  ChewieAdapterImpl({required this.chewieController});

  @override
  void dispose() {
    chewieController.dispose();
  }

  @override
  void pause() {
    chewieController.pause();
  }

  @override
  void play() {
    chewieController.play();
  }

  @override
  Future<void> seekTo(Duration position) async {
    await chewieController.seekTo(position);
  }

  @override
  Widget get videoPlayer => Chewie(
        controller: chewieController,
      );
}
