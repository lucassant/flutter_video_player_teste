import 'package:flutter/src/widgets/framework.dart';
import 'package:video_player_teste/adapters/video_handler_adapter.dart';
import 'package:video_player_teste/chewie_controller_factory.dart';
import 'package:video_player_teste/data/video_viewer_controller.dart';

class VideoViewerControllerImpl extends VideoViewerController {
  final VideoHandlerAdapter videoHandlerAdapter;

  VideoViewerControllerImpl({
    required String videoUrl,
    double aspectRatio = 16 / 9,
    bool fullScreen = false,
    bool looping = false,
    bool showControls = true,
    bool showOptions = true,
    bool allowFullScreen = true,
    bool allowMuting = true,
    bool autoPlay = true,
  }) : videoHandlerAdapter = ChewieControllerFactory.create(
          videoUrl: videoUrl,
          aspectRatio: aspectRatio,
          fullScreen: fullScreen,
          allowMuting: allowMuting,
          allowFullScreen: allowFullScreen,
          autoPlay: autoPlay,
          looping: looping,
          showControls: showControls,
          showOptions: showOptions,
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
