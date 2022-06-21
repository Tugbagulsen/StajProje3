import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class VideoList extends StatefulWidget {
  VideoList({Key? key}) : super(key: key);

  @override
  State<VideoList> createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  late VideoPlayerController _controller;
  late VideoPlayerController _controller1;
  late VideoPlayerController _controller2;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        setState(() {});
      });

    _controller1 = VideoPlayerController.network(
        'https://filesamples.com/samples/video/mp4/sample_960x540.mp4')
      ..initialize().then((_) {
        setState(() {});
      });

    _controller2 = VideoPlayerController.network(
        'https://filesamples.com/samples/video/mp4/sample_1920x1080.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : const SizedBox(
                      height: 100,
                      width: 100,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
            ),
            TextButton(
                child: const Icon(Icons.play_arrow),
                onPressed: () {
                  setState(() {
                    _controller.value.isPlaying
                        ? _controller.pause()
                        : _controller.play();
                  });
                }),
            Center(
              child: _controller1.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller1.value.aspectRatio,
                      child: VideoPlayer(_controller1),
                    )
                  : const SizedBox(
                      height: 100,
                      width: 100,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
            ),
            TextButton(
                child: const Icon(Icons.play_arrow),
                onPressed: () {
                  setState(() {
                    _controller1.value.isPlaying
                        ? _controller1.pause()
                        : _controller1.play();
                  });
                }),
            Center(
              child: _controller2.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller2.value.aspectRatio,
                      child: VideoPlayer(_controller2),
                    )
                  : const SizedBox(
                      height: 100,
                      width: 100,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
            ),
            TextButton(
                child: const Icon(Icons.play_arrow),
                onPressed: () {
                  setState(() {
                    _controller2.value.isPlaying
                        ? _controller2.pause()
                        : _controller2.play();
                  });
                })
          ],
        ),
      ),
    );
  }
}
