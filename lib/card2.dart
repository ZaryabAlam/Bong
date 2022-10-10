import 'package:flutter/material.dart';

class Card2 extends StatefulWidget {
  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    return Card(
      elevation: 15,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      shadowColor: Colors.black87,
      color: Colors.cyan,
      child: Container(
        height: _h * 0.065,
        width: _w * 0.99,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.dashboard_customize,
              size: 40,
              color: Colors.white70,
            ),
            Text(
              "Create your own bundle",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            ),
            Container(
                height: _h * 0.045,
                width: _w * 0.23,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Create",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent)))
          ],
        ),
      ),
    );
  }
}
