import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_application_1/textual.dart';
import 'package:flutter_application_1/video.dart';

class TutorialOption extends StatefulWidget {
  final String situationName, category;
  const TutorialOption(this.situationName, this.category);

  @override
  State<TutorialOption> createState() => _TutorialOptionState();
}

class _TutorialOptionState extends State<TutorialOption> {
  String OptionName(int index) {
    if (index == 0)
      return "Textual";
    else
      return "Video";
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.grey,
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
                '${widget.category}',
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
        body: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 15.0),
            child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.7,
                child: Center(
                  child: Container(
                    height: 200,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.info_outline,
                          color: Colors.teal,
                        ),
                        title: Text(
                          "Textual",
                          style: TextStyle(fontSize: 25),
                        ),

                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Textual(
                                    widget.situationName, widget.category)),
                          );
                        },
                        // style: ListTileStyle(),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2.7,
                child: Center(
                  child: Container(
                    height: 200,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.info_outline,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'Watch Video',
                          style: TextStyle(fontSize: 25),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Video(
                                  widget.situationName, widget.category)));
                        },
                        // style: ListTileStyle(),
                      ),
                    ),
                  ),
                ),
              ),
            ])));
  }
}
