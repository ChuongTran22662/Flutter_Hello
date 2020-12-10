import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  String name;
  int age;
  MyApp({this.name, this.age});
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _email;
  final emailEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is a StatefulWidget',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Email : ${_email}',
                style: TextStyle(fontSize: 30, color: Colors.red),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: TextField(
                  controller: emailEditingController,
                  onChanged: (text) {
                    this.setState(() {
                      _email = text;
                    });
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(const Radius.circular(30))),
                      labelText: 'Enter your Email'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   String name;
//   int age;
//   MyApp({this.name, this.age});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "This is my app",
//       home: Scaffold(
//         body: Center(
//           child: Text(
//             'name: ${name} - ${age}',
//             style: TextStyle(fontSize: 30),
//             textDirection: TextDirection.ltr,
//           ),
//         ),
//       ),
//     );
//   }
// }
