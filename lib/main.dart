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
          child: TextButton(
            
            onPressed: () {},
            style: new ButtonStyle(
              visualDensity: new VisualDensity(horizontal: 1, vertical: 2),
              backgroundColor: MaterialStateProperty.all(Colors.green)
            ),
             child: Text(
               "Flat button",
               style: new TextStyle(
                 color: Colors.green,
                 background: new Paint(

                 )
                 
               ),
               
               )
             )
        ),
      ),

      
    );
  }
}