import 'package:flutter/material.dart';

class Cate1 extends StatefulWidget {
  @override
  State<Cate1> createState() => _Cate1State();
}

class _Cate1State extends State<Cate1> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      color: Colors.white,
      shadowColor: Colors.black87,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(height: 100, width: 100),
    );
  }
}
