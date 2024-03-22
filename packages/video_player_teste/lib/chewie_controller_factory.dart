import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_teste/adapters/chewie_adapter_impl.dart';
import 'package:video_player_teste/adapters/video_handler_adapter.dart';

class ChewieControllerFactory {
  ChewieControllerFactory._();

  static VideoHandlerAdapter create({
    required String videoUrl,
    required double aspectRatio,
    required bool fullScreen,
    required bool looping,
    required bool showControls,
    required bool showOptions,
    required bool allowFullScreen,
    required bool allowMuting,
    required bool autoPlay,
  }) {
    final ChewieController chewieController = ChewieController(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(
          videoUrl,
        ),
      ),
      aspectRatio: aspectRatio,
      autoPlay: autoPlay,
      looping: looping,
      showControls: showControls,
      showOptions: showOptions,
      allowFullScreen: allowFullScreen,
      allowMuting: allowMuting,
      fullScreenByDefault: fullScreen,
    );

    return ChewieAdapterImpl(
      chewieController: chewieController,
    );
  }
}
