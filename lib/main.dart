import 'package:flutter/material.dart';
import 'constain/mau.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chưởng mặt lồn",
          style: TextStyle(color: red),
        ),
        leading: Icon(Icons.cancel),
        actions: [InkWell(onTap: () {}, child: Text("haha"))],
      ),
    );
  }
}
