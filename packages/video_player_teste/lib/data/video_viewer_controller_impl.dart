import 'package:flutter/src/widgets/framework.dart';
import 'package:video_player_teste/adapters/video_handler_adapter.dart';
import 'package:video_player_teste/chewie_controller_factory.dart';
import 'package:video_player_teste/data/video_viewer_controller.dart';

class VideoViewerControllerImpl extends VideoViewerController {
  final VideoHandlerAdapter videoHandlerAdapter;

  VideoViewerControllerImpl({
    required String videoUrl,
  }) : videoHandlerAdapter = ChewieControllerFactory.create(
          videoUrl: videoUrl,
        );

  @override
  void dispose() {
    videoHandlerAdapter.dispose();
  }

  @override
  void pause() {
    videoHandlerAdapter.pause();
  }

  @override
  void play() {
    videoHandlerAdapter.play();
  }

  @override
  void seekTo(Duration position) {
    videoHandlerAdapter.seekTo(position);
  }

  @override
  Widget get videoPlayer => videoHandlerAdapter.videoPlayer;
}
