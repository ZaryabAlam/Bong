import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Cate2 extends StatefulWidget {
  @override
  State<Cate2> createState() => _Cate2State();
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
  FontAwesomeIcons.userClock,
  FontAwesomeIcons.store,
  FontAwesomeIcons.solidCreditCard,
  FontAwesomeIcons.fingerprint,
  FontAwesomeIcons.globeAsia,
  FontAwesomeIcons.cloudscale,
  FontAwesomeIcons.boxOpen,
];

List colors = [
  Colors.redAccent[200],
  Colors.blue[600],
  Colors.deepOrange[300],
  Colors.green[900],
  Colors.black,
  Colors.lightGreen[500],
  Colors.red[900],
  Colors.brown[400]
];

class _Cate2State extends State<Cate2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 55,
        mainAxisSpacing: 1,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: List.generate(8, (index) {
          return Padding(
            padding: EdgeInsets.all(1),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20)),
                  height: 60,
                  width: 60,
                  child: Icon(
                    icons[index],
                    color: colors[index],
                    size: 35,
                  ),
                ),
                Text(
                  names[index],
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
