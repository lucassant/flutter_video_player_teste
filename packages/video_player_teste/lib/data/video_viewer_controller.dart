import 'package:flutter/material.dart';

abstract class VideoViewerController {
  void play();
  void pause();
  void seekTo(Duration position);
  void dispose();
  Widget get videoPlayer;
}
