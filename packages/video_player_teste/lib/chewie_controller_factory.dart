import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_teste/adapters/chewie_adapter_impl.dart';
import 'package:video_player_teste/adapters/video_handler_adapter.dart';

class ChewieControllerFactory {
  ChewieControllerFactory._();

  static VideoHandlerAdapter create({
    required String videoUrl,
  }) {
    return ChewieAdapterImpl(
      chewieController: ChewieController(
        videoPlayerController: VideoPlayerController.networkUrl(
          Uri.parse(
            videoUrl,
          ),
        ),
        aspectRatio: 3 / 2,
        autoPlay: true,
        looping: true,
        showControls: true,
        showOptions: true,
        allowFullScreen: true,
        allowMuting: true,
      ),
    );
  }
}
