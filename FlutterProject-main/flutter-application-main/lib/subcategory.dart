import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_application_1/video.dart';
import 'package:flutter_application_1/tutorialoption.dart';

class Subcategory extends StatefulWidget {
  final String situationName;
  const Subcategory(this.situationName);

  @override
  State<Subcategory> createState() => _SubcategoryState();
}

class _SubcategoryState extends State<Subcategory> {
  int SubcategoryNumber(String stName) {
    if (stName == "Choking")
      return 2;
    else if (stName == "Acid Attack")
      return 1;
    else if (stName == "Burns")
      return 3;
    else if (stName == "Head Injury")
      return 3;
    else if (stName == "Earthquake")
      return 3;
    else if (stName == "Stroke")
      return 3;
    else
      return 3;
  }

  String SubcategoryName(String stName, int index) {
    List<String> SubcategoryNameList = [];
    if (stName == "Choking")
      SubcategoryNameList = ["Adult/Child", "Infant"];
    else if (stName == "Acid Attack")
      SubcategoryNameList = ["Tap for First Aid"];
    else if (stName == "Burns")
      SubcategoryNameList = [
        "Important Information",
        "Face/Mouth",
        "Chemical-body/eyes"
      ];
    else if (stName == "Earthquake")
      SubcategoryNameList = ["Indoor", "Outside", "Others"];
    else if (stName == "Head Injury")
      SubcategoryNameList = ["General Warning", "Recognition", "Treatment"];
    else if (stName == "Stroke")
      SubcategoryNameList = ["Recognition", "Responsive", "Unresponsive"];
    return SubcategoryNameList[index];
  }

  int number = 0;
  @override
  void initState() {
    super.initState();
    number = SubcategoryNumber(widget.situationName);
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
                widget.situationName,
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
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              for (int i = 0; i < number; i++)
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  child: Center(
                    child: Container(
                      height: 100,
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
                            SubcategoryName(widget.situationName, i),
                            style: TextStyle(fontSize: 25),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TutorialOption(
                                      widget.situationName,
                                      SubcategoryName(
                                          widget.situationName, i))),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
            ])));
  }
}
