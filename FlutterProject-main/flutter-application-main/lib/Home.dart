import 'package:flutter/material.dart';
import 'package:flutter_application_1/subcategory.dart';
import 'package:flutter_application_1/tutorialoption.dart';

class Situation extends StatefulWidget {
  const Situation({Key? key}) : super(key: key);

  @override
  State<Situation> createState() => _SituationState();
}

class _SituationState extends State<Situation> {
  List ViewSituation = ["Choking", "Acid Attack","Burns","Earthquake", "Head Injury","Stroke"];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
          child: ListView(
        children: [
          for (int i = 0; i < ViewSituation.length; i++)
            SizedBox(
              height: MediaQuery.of(context).size.height / (ViewSituation.length+2),
              child: ListTile(
                iconColor: Colors.teal,
                leading: Icon(Icons.medical_services),
                title: Text(
                  ViewSituation[i],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                //subtitle: Text('Tap to view'),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Subcategory(ViewSituation[i])),
                  );
                },
              ),
            ),
        ],
      )),
    );
  }
}
