import 'package:flutter/material.dart';
import 'package:flutter_application_1/Input.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Profile'),
      
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Input()),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      margin: EdgeInsets.all(15.0),
                      shadowColor: Colors.grey,
                      color: Colors.blue,
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.person_add, color: Colors.green),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Add',
                                  style: TextStyle(color: Colors.white)),
                            ]),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Input()),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      margin: EdgeInsets.all(15.0),
                      shadowColor: Colors.grey,
                      color: Colors.blue,
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.person_add, color: Colors.green),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Delete',
                                  style: TextStyle(color: Colors.white)),
                            ]),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Input()),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      margin: EdgeInsets.all(15.0),
                      shadowColor: Colors.grey,
                      color: Colors.blue,
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.person_add, color: Colors.green),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Recent',
                                  style: TextStyle(color: Colors.white)),
                              SizedBox(
                                width: 5,
                              ),
                            ]),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
