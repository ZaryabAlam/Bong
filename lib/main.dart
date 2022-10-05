import 'package:bong/appbar.dart';
import 'package:bong/first.dart';
import 'package:bong/splash.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0), child: Appbar1()),
        body: Home(),
      ),
    );
  }
}
