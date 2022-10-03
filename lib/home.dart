import 'package:bong/extra.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white10,
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
//////////////////////////////// Body /////////////////////////////////////////////////
      body: Column(),
//////////////////////////////// Nav Bar /////////////////////////////////////////////////
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
                    child: Icon(Icons.data_usage_rounded, color: Colors.grey)),
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
    );
  }
}
