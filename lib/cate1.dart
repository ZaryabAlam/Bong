import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'extra.dart';

class Cate1 extends StatefulWidget {
  @override
  State<Cate1> createState() => _Cate1State();
}

List<String> names = [
  "Rewards",
  "History",
  "Shop",
  "Balance",
  "Biomatric",
  "International",
  "Load",
  "More",
];
List<IconData> icons = [
  (FontAwesomeIcons.gift),
  FontAwesomeIcons.clock,
  FontAwesomeIcons.storeAlt,
  FontAwesomeIcons.solidCreditCard,
  FontAwesomeIcons.fingerprint,
  FontAwesomeIcons.globeAsia,
  FontAwesomeIcons.cloudscale,
  FontAwesomeIcons.boxOpen,
];

List colors = [
  Color(0xFF02c0f5),
  Color(0xFF02c0f5),
  Color(0xFF02c0f5),
  Color(0xFF02c0f5),
  Color(0xFF02c0f5),
  Color(0xFF02c0f5),
  Color(0xFF02c0f5),
  Color(0xFF02c0f5)
];

class _Cate1State extends State<Cate1> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      color: Colors.white,
      shadowColor: Colors.black87,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        margin: EdgeInsets.all(10),
        height: 200,
        width: 500,
        child: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 20,
          mainAxisSpacing: 2,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(8, (index) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Extra()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20)),
                    height: 60,
                    width: 60,
                    child: Icon(
                      icons[index],
                      color: colors[index],
                      size: 35,
                    ),
                  ),
                ),
                Text(
                  names[index],
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
