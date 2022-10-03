import 'package:flutter/material.dart';

class Extra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: _h * 0.3,
              width: _w * 0.4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          NetworkImage("https://i.ibb.co/N9K45y2/b-logo2.png"),
                      fit: BoxFit.contain)),
            ),
            SizedBox(
              height: _h * 0.02,
              width: _w * 0.1,
            ),
            Text(
              "More coming soon!",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w100,
                  color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
