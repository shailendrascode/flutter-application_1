import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title: 'Sample app',
    theme: ThemeData(
      primarySwatch: Colors.red,
      ),
      home: Center(
        child: Text(
          'Hi from me'
        )
      )

  )
  );
}