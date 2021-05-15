import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String str = "my";

    return MaterialApp(
      home: Material(
          child: Center(child: Container(child: Text("Welcome to $str app")))),
    );
  }
}
