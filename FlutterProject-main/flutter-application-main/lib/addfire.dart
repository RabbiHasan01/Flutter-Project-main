import 'package:flutter/material.dart';

// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseDemoScreen extends StatelessWidget {
  final databaseReference = FirebaseDatabase.instance.reference();
  //var collection = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    //getData();
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Connect'),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ElevatedButton(
            child: Text('Create Record'),
            onPressed: () {
              createRecord();
            },
          ),

          ElevatedButton(
            child: Text('View Record'),
            onPressed: () {
              getData1();
            },
          ),
          // ElevatedButton(
          //     child: Text('Udate Record'),
          //     onPressed: () {
          //       updateData();
          //     },
          // ),
          // ElevatedButton(
          //     child: Text('Delete Record'),
          //     onPressed: () {
          //       deleteData();
          //     },
          // ),
        ],
      )), //center
    );
  }

  void createRecord() async {
    // DatabaseReference ref = FirebaseDatabase.instance.ref("users/7");
    // await ref.set({"name": "John", "phone": "01690077732"});
    // print("user added");

    CollectionReference user = FirebaseFirestore.instance.collection('users');
    user.doc('10').set({
      //Data added in the form of a dictionary into the document.
      'name': "Monir 10", 'phone': "01690077777"
    });
    print("user added");
    // final fireStore = FirebaseFirestore.instance.collection('users');
    // CollectionReference users = FirebaseFirestore.instance.collection('users');
    // return users
    //     .add({'name': "Monir Ahmad", 'phone': "01690077777"})
    //     .then((value) => print("User Added"))
    //     .catchError((error) => print("Failed to add user: $error"));
  }

  void getData1() async {
    Future<List<String>> record = getData();
    List list = await getData();
    if (list != null) print(list[0]);
  }

  Future<List<String>> getData() async {
    //all data
    // FirebaseFirestore.instance
    //     .collection('users')
    //     .get()
    //     .then((QuerySnapshot querySnapshot) {
    //   querySnapshot.docs.forEach((doc) {
    //     print(doc["age"]);
    //   });
    // });
    List<String> record = [];
    //single data
    var collection = FirebaseFirestore.instance.collection('users');
    var docSnapshot = await collection.doc('8').get();
    Map<String, dynamic>? data = docSnapshot.data();
    if (data != null) {
      record.add(data['name']);
      record.add(data['phone']);
      print(data);
      //   //   int c = data.length;
      //   //   for (int i = 0; i < c; i++) print(data[i]['age']);
    }
    return record;
    // //String st = data['company']??'null';
  }

  // void updateData(){
  //   databaseReference.child('1').update({
  //     'description': 'J2EE complete Reference'
  //   });
  // }

  // void deleteData(){
  //   databaseReference.child('1').remove();
  // }
}
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
 
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
 
// class _MyHomePageState extends State<MyHomePage> {
//   Future getData() async {
//     var firestore = FirebaseFirestore.instance;
//     QuerySnapshot qn = await firestore.collection("Animal").get();
//     return qn.docs;
//   }
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: getData(),
//         builder: (_, snapshot) {
//           return ListView.builder(
//             itemCount: snapshot.data.length,
//             itemBuilder: (context, index) {
//               DocumentSnapshot data = snapshot.data[index];
//               return ListTile(
//                 title: Text(data["Name"]),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
 

// // class AddUser extends StatelessWidget {
// //   final String fullName;
// //   final String company;
// //   final int age;

// //   AddUser(this.fullName, this.company, this.age);

// //   @override
// //   Widget build(BuildContext context) {
// //     // Create a CollectionReference called users that references the firestore collection
// //     CollectionReference users = FirebaseFirestore.instance.collection('users');
// // //Future<void> addUser()
// //     Future<void> addUser() {
// //       // Call the user's CollectionReference to add a new user
// //       return users
// //           .add({
// //             'full_name': fullName, // John Doe
// //             'company': company, // Stokes and Sons
// //             'age': age // 33
// //           })
// //           .then((value) => print("User Added"))
// //           .catchError((error) => print("Failed to add user: $error"));
// //     }

// //     //return addUser();
// //     return TextButton(
// //       onPressed: addUser,
// //       child: Text(
// //         "Add User",
// //       ),
// //     );
// //   }
// // }
