import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Container(
          height: _h * 0.3,
          width: _w * 0.4,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('https://i.ibb.co/k9fBc8R/b-logo.png'),
                  fit: BoxFit.contain)),
        ),
      ),
    );
  }
}
