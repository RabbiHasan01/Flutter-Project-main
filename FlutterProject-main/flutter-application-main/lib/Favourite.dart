// import 'dart:js_util';

import 'package:flutter/material.dart';

import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:flutter_sms/flutter_sms.dart';
import 'package:url_launcher/url_launcher.dart';

List<String> recipients = [
  '01786370850',
  '01518318801',
  '01786371050',
  '01786374100',
  '01786370660',
];
List name = ['Fahim', 'Rajib', 'Sakib', 'Rafi', 'Sumon'];
bool _flag = true;

String message = "I'm in danger!! Help me!!!";

void _sendSMS(String message, List<String> recipents) async {
  String _result = await sendSMS(message: message, recipients: recipents)
      .catchError((onError) {
    print(onError);
  });
  print(_result);
}

// void _favlist() async {
//   var collection = FirebaseFirestore.instance.collection('DriverList');
//   var querySnapshot = await collection.get();
//   for (var queryDocumentSnapshot in querySnapshot.docs) {
//     Map<String, dynamic> data = queryDocumentSnapshot.data();
//     var name = data['name'];
//     var phone = data['phone'];
//   }
// }

class notification extends StatefulWidget {
  //firebase fire = new firebase();

  notification({Key? key}) : super(key: key);
  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  // void initState() {
  //   super.initState();
  //   name.add("ballal");
  //   name.add("ballal1");
  //   recipients.add("01789907765");
  //   recipients.add("01789907765");
  //   //this.nameScreen = "From initState";
  // }

  final _controller = TextEditingController();
  String nameP = '';
  String phoneP = '';
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  GlobalKey fst = GlobalKey<FormState>();
  String? _error;

  //final fireStore = FirebaseFirestore.instance.collection('users');
  //CollectionReference users = FirebaseFirestore.instance.collection('users');
//Future<void> _setText()

  void _setText() {
    if (_controller.text.length != 11) {
      _error = 'Please enter a valid phone number';
    } else {
      _error = null;
    }
    name.add(_controller2.text);
    recipients.add(_controller1.text);
    _controller1.clear();
    _controller2.clear();

    //AddUser("Monir", "Ahmad", 33);
    // return users
    //     .add({
    //       'name': _controller2.text, // John Doe
    //       'phone': _controller1.text, // Stokes and Sons
    //     })
    //     .then((value) => {
    //           print("User Added"),
    //           name.add(_controller2.text),
    //           recipients.add(_controller1.text),
    //           _controller2.clear(),
    //           _controller1.clear(),
    //           setState(() => {}),
    //         })
    //     .catchError((error) => {
    //           print("Failed to add user: $error"),
    //           setState(() {}),
    //         });

    // String id = DateTime.now().microsecondsSinceEpoch.toString();
    // fireStore.doc().set(
    //     {'title': _controller1.text.toString(), 'id': id}).then((value) {});
    // // .onError((error, stackTrace) {
    //   Utils().toastMessage(error.toString());
    // });
  }

  @override
  // void initState() {
  //   name.clear();
  //   recipients.clear();
  //   FirebaseFirestore.instance
  //       .collection('users')
  //       .get()
  //       .then((QuerySnapshot querySnapshot) {
  //     querySnapshot.docs.forEach((doc) {
  //       name.add(doc["name"]);
  //       recipients.add(doc['phone']);
  //     });
  //   });
  //   super.initState();
  //   //Navigator.pop(context);
  // }

  bool showPass = false;
  void setval() {
    setState(() {
      showPass = !showPass;
    });
  }

  @override
  Widget build(BuildContext context) => new Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              backgroundColor: Colors.teal,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          decoration: const InputDecoration(
                            labelText: 'Name',
                            hintText: 'Enter Name',
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 211, 208, 208),
                          ),
                          controller: _controller2,
                          keyboardType: TextInputType.text,
                          maxLength: 40,
                          autocorrect: true,
                          cursorColor: Colors.purple,
                          cursorWidth: 3,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Form(
                          key: fst,
                          child: TextField(
                            decoration: InputDecoration(
                                errorText: _error,
                                labelText: 'Phone Number',
                                hintText: 'Enter a  number of 11 digits',
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                filled: true,
                                fillColor: Color.fromARGB(255, 211, 208, 208),
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.remove_red_eye),
                                  onPressed: null,
                                )),
                            controller: _controller1,
                            keyboardType: TextInputType.text,
                            maxLength: 11,
                            obscureText: showPass,
                            cursorColor: Colors.purple,
                            cursorWidth: 3,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _setText();
                              });
                              Navigator.pop(context);
                            },
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(7),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.green)),
                            child: const Text('Submit')),
                      ),
                    ],
                  ),
                );
              },
              child: Icon(Icons.add_call),
            ),
            FloatingActionButton(
              backgroundColor: Colors.teal,
              onPressed: () {
                _sendSMS(message, recipients);
              },
              child: Icon(Icons.message_outlined),
            )
          ],
        ),
      ),
      appBar: new AppBar(
        title: const Text("Multiple Messaging"),
        leading: Icon(Icons.message_sharp),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(itemBuilder: itemBuilder, itemCount: name.length));

  Widget itemBuilder(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Card(
        elevation: 10,
        shadowColor: Colors.grey[800],
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ListTile(
          dense: true,
          iconColor: Colors.teal,
          title: Text(
            name[index],
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text("Call now"),
          leading: Icon(Icons.account_circle_rounded, color: Colors.teal),
          trailing: Container(
            width: 80,
            child: Row(
              children: [
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.edit),
                    color: Colors.blue,
                    onPressed: () {
                      setState(() {
                        showDialog(
                          barrierColor: Colors.grey.withOpacity(.5),
                          useSafeArea: true,
                          context: context,
                          builder: (context) => SimpleDialog(
                            children: [
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    // ignore: prefer_interpolation_to_compose_strings
                                    'Update Contact of ' + name[index],
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: const InputDecoration(
                                    hintText: 'Enter contact name: ',
                                    labelText: 'Contact name ',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.green)),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      nameP = value;
                                    });
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: const InputDecoration(
                                    hintText: 'Enter contact number: ',
                                    labelText: 'Contact number ',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.green)),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      phoneP = value;
                                    });
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(60),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: _flag
                                          ? Colors.lightGreen
                                          : Colors.blue,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        name[index] = nameP;
                                        recipients[index] = phoneP!;
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Text(_flag ? 'Update' : 'Updated')),
                              )
                            ],
                          ),
                        );
                      });
                    },
                  ),
                ),
                Expanded(
                    child: IconButton(
                  onPressed: () {
                    setState(() {
                      name.removeAt(index);
                      recipients.removeAt(index);
                    });
                  },
                  icon: Icon(Icons.delete),
                  color: Colors.red,
                )),
                Expanded(
                    child: IconButton(
                  onPressed: () => launch('tel:+88${recipients[index]}'),
                  icon: Icon(Icons.call),
                  color: Colors.green,
                )),
              ],
            ),
          ),
          // Icon(
          //   Icons.call,
          //   color: Colors.teal,
          // ),
          // onTap: () => launch('tel:+88${recipients[index]}'),
        ),
      ),
    );
  }
}
