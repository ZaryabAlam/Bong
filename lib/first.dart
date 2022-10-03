import 'package:flutter/material.dart';

class First extends StatefulWidget {
  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: _h * 0.2),
                Center(
                  child: Container(
                    height: _h * 0.3,
                    width: _w * 0.4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              "https://i.ibb.co/sR6MLLm/b-logo3.png",
                            ),
                            fit: BoxFit.contain)),
                  ),
                ),
                Text(
                  "Mockup Zong 4G clone application",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                ),
                SizedBox(height: _h * 0.1),
                Container(
                  height: _h * 0.07,
                  width: _w * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xFF02c0f5)),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Lets begin"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent),
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: _h * 0.2,
                  width: _w * 0.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://i.ibb.co/kJrJX1v/b-logo4.png",
                          ),
                          fit: BoxFit.contain)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
