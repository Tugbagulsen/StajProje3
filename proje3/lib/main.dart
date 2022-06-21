import 'package:flutter/material.dart';
import 'package:proje3/home_view.dart';
import 'package:proje3/video_list.dart';

final urlLandscapeVideo =
    "https://filesamples.com/samples/video/mp4/sample_960x400_ocean_with_audio.mp4";
final urlPortraitVideo =
    "https://filesamples.com/samples/video/mp4/sample_960x540.mp4";
final urlYoutubeVideo =
    "https://filesamples.com/samples/video/mp4/sample_1920x1080.mp4";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: HomeView(),
    );
  }
}
