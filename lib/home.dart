import 'package:bong/card1.dart';
import 'package:bong/card2.dart';
import 'package:bong/cate2.dart';
import 'package:bong/slide1.dart';
import 'package:bong/cate1.dart';
import 'package:flutter/material.dart';

import 'appbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    return Scaffold(
//////////////////////////////// Appbar /////////////////////////////////////////////////
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(80.0), child: Appbar1()),
      // backgroundColor: Colors.white,
//////////////////////////////// Body /////////////////////////////////////////////////
///////////////////////////////// Top /////////////////////////////////////////////////
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("0311 2136873",
                          style: TextStyle(color: Colors.grey)),
                      Row(
                        children: [
                          Text(
                            "102",
                            style: TextStyle(
                                fontSize: 40,
                                color: Color(0xFF02c0f5),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: _w * 0.01,
                          ),
                          Text("PKR",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Text("Expires on 31st Dec, 2099",
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                SizedBox(
                  width: _w * 0.2,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: _h * 0.045,
                        width: _w * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xFF02c0f5)),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Recharge"),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent),
                        ),
                      ),
                      SizedBox(
                        height: _h * 0.015,
                      ),
                      Container(
                        height: _h * 0.045,
                        width: _w * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xFF02c0f5)),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Loan"),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
////////////////////////////////////// Cards //////////////////////////////////////////////////
            Column(
              children: [
                SizedBox(
                  height: _h * 0.13,
                ),
                Card1()
              ],
            ),
/////////////////////////////////////// Card 2 //////////////////////////////////////////////////
            Column(
              children: [
                SizedBox(
                  height: _h * 0.39,
                ),
                Card2()
              ],
            ),
///////////////////////////////////////Sldie Show////////////////////////////////////////////////////

            Column(
              children: [
                SizedBox(
                  height: _h * 0.48,
                ),
                Slide1(),
              ],
            ),
//////////////////////////////////////Menu Category////////////////////////////////////////////////////
            Column(
              children: [
                SizedBox(
                  height: _h * 0.70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Cate1()],
                ),
              ],
            ),
//////////////////////////////////////Offers List////////////////////////////////////////////////////
            Column(
              children: [
                SizedBox(
                  height: _h * 0.95,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Cate2()],
                ),
              ],
            ),
          ],
        ),
      ),
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
//////////////////////////////// End /////////////////////////////////////////////////
    );
  }
}
