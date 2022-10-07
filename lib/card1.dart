import 'package:bong/extra.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Card1 extends StatefulWidget {
  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
/////////////////////////////////////// Cards ////////////////////////////////////////////////////////////////////
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Extra()));
          },
          child: Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            shadowColor: Colors.black87,
            color: Colors.white,
            child: Container(
              height: _h * 0.21,
              width: _w * 0.28,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.wifi_rounded,
                    size: 40,
                    color: Color(0xFF02c0f5),
                  ),
                  Text(
                    "960 MB",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text("Remaining", style: TextStyle(color: Colors.grey)),
                  Padding(
                    padding: EdgeInsets.only(left: _w * 0.04),
                    child: new LinearPercentIndicator(
                      width: _w * 0.2,
                      lineHeight: _h * 0.007,
                      percent: 0.83,
                      backgroundColor: Colors.grey[300],
                      progressColor: Colors.cyan[400],
                    ),
                  ),
                  Text("1 offer", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ),
        ),
///////////////////////////////////////////////////////////////////////////////////////////////////////////
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Extra()));
          },
          child: Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            shadowColor: Colors.black87,
            color: Colors.white,
            child: Container(
              height: _h * 0.21,
              width: _w * 0.28,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.phone_in_talk_rounded,
                    size: 40,
                    color: Color(0xFF02c0f5),
                  ),
                  Text(
                    "62 MINS",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text("Remaining", style: TextStyle(color: Colors.grey)),
                  Padding(
                    padding: EdgeInsets.only(left: _w * 0.04),
                    child: new LinearPercentIndicator(
                      width: _w * 0.2,
                      lineHeight: _h * 0.007,
                      percent: 0.5,
                      backgroundColor: Colors.grey[300],
                      progressColor: Colors.cyan[400],
                    ),
                  ),
                  Text("2 offers", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ),
        ),
///////////////////////////////////////////////////////////////////////////////////////////////////////////
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Extra()));
          },
          child: Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            shadowColor: Colors.black87,
            color: Colors.white,
            child: Container(
              height: _h * 0.21,
              width: _w * 0.28,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.message_rounded,
                    size: 40,
                    color: Color(0xFF02c0f5),
                  ),
                  Text(
                    "514 SMS",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text("Remaining", style: TextStyle(color: Colors.grey)),
                  Padding(
                    padding: EdgeInsets.only(left: _w * 0.04),
                    child: new LinearPercentIndicator(
                      width: _w * 0.2,
                      lineHeight: _h * 0.007,
                      percent: 0.26,
                      backgroundColor: Colors.grey[300],
                      progressColor: Colors.cyan[400],
                    ),
                  ),
                  Text("1 offer", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
