import 'package:flutter/material.dart';

import 'extra.dart';

class Appbar1 extends StatefulWidget {
  @override
  State<Appbar1> createState() => _Appbar1State();
}

class _Appbar1State extends State<Appbar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        title: Text("Hello, Zaryab!"),
        leading: IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Extra()));
            }),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Extra()));
              }),
          IconButton(
              icon: Icon(Icons.loop_rounded),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Extra()));
              }),
          IconButton(
              icon: Icon(Icons.notes_rounded),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Extra()));
              })
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(color: Color(0xFF02c0f5)),
        ),
      ),
    );
  }
}
