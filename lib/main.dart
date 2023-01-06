import 'package:bong/first.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//test

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: First(),
      ),
    );
  }
}
