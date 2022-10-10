import 'package:bong/appbar.dart';
import 'package:bong/slide1.dart';
import 'package:bong/card2.dart';
import 'package:bong/first.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0), child: Appbar1()),
        body: Slide1(),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.grey[700],
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 2,
            items: [
              BottomNavigationBarItem(
                  icon: GestureDetector(
                      onTap: () {}, child: Icon(Icons.home_rounded)),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: GestureDetector(
                      onTap: () {},
                      child:
                          Icon(Icons.data_usage_rounded, color: Colors.grey)),
                  label: "Usage"),
              BottomNavigationBarItem(
                  icon: GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.add_box_rounded, color: Colors.grey)),
                  label: "Bundle"),
              BottomNavigationBarItem(
                  icon: GestureDetector(
                      onTap: () {},
                      child:
                          Icon(Icons.new_releases_rounded, color: Colors.grey)),
                  label: "Latest"),
              BottomNavigationBarItem(
                  icon: GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.more_rounded, color: Colors.grey)),
                  label: "More"),
            ]),
      ),
    );
  }
}
