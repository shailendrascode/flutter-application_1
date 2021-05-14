import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sample app",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "App"
          ),

          
          
        ),

        body: Center(
          child: Text("i am shailendra"),
        ),
      ),

      
    );
  }
}