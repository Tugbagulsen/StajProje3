import 'package:flutter/material.dart';
import 'package:proje3/image_gallery.dart';
import 'package:proje3/users_list.dart';
import 'package:proje3/video_list.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            _appBar,
            _tabViewItems,
            Expanded(
              child: TabBarView(
                children: [UserList(), ImageGallery(), VideoList()],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget get _appBar => AppBar(
        backgroundColor: Color.fromARGB(227, 89, 75, 119),
        elevation: 0,
        title: Text("Proje3"),
      );

  Widget get _tabViewItems => Container(
        color: Color.fromARGB(227, 89, 75, 119),
        child: TabBar(
          indicatorColor: Color.fromARGB(228, 191, 194, 193),
          tabs: <Widget>[
            Tab(
                child: Text(
              'Post',
            )),
            Tab(
                child: Text(
              'İmage Gallery',
            )),
            Tab(
                child: Text(
              'Video List',
            )),
          ],
        ),
      );
}

class VideoPlayerController {}

class _controller {}
