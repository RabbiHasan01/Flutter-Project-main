import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  final String situationName, category;
  Video(this.situationName, this.category);

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer() {
    if (widget.situationName == "Choking")
      controller = VideoPlayerController.asset('lib/videos/choking.mp4');
    else if (widget.situationName == "Acid Attack")
      controller = VideoPlayerController.asset('lib/videos/aa.mp4');
    else if (widget.situationName == "Burns")
      controller = VideoPlayerController.asset('lib/videos/Burns.mp4');
    else if (widget.situationName == "Head Injury")
      controller = VideoPlayerController.asset('lib/videos/head injury.mp4');
    else if (widget.situationName == "Stroke")
      controller = VideoPlayerController.asset('lib/videos/stroke.mp4');
    else
      controller = VideoPlayerController.asset('lib/videos/stroke.mp4');

    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value) {
      setState(() {});
    });
  }

  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'Playing video',
              textStyle: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
              speed: const Duration(milliseconds: 200),
            ),
          ],
          totalRepeatCount: 4,
          pause: const Duration(milliseconds: 200),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        ),
        //backgroundColor: Colors.blue,
      ),
      body: Container(
          child: Column(children: [
        AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: VideoPlayer(controller),
        ),
        Container(
          //duration of video
          child:
              Text("Total Duration: " + controller.value.duration.toString()),
        ),
        Container(
            child: VideoProgressIndicator(controller,
                allowScrubbing: true,
                colors: VideoProgressColors(
                  backgroundColor: Colors.redAccent,
                  playedColor: Colors.green,
                  bufferedColor: Colors.purple,
                ))),
        Container(
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    if (controller.value.isPlaying) {
                      controller.pause();
                    } else {
                      controller.play();
                    }

                    setState(() {});
                  },
                  icon: Icon(controller.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow)),
              IconButton(
                  onPressed: () {
                    controller.seekTo(Duration(seconds: 0));

                    setState(() {});
                  },
                  icon: Icon(Icons.stop))
            ],
          ),
        )
      ])),
    );
  }
}
