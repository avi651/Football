import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Football',
      theme: ThemeData(
        primaryColor: Colors.cyan,
        accentColor: Colors.indigo,
      ),
      home: Container(),
    );
  }
}
