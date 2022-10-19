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
  (FontAwesomeIcons.gifts),
  FontAwesomeIcons.accessibleIcon,
  FontAwesomeIcons.accessibleIcon,
  FontAwesomeIcons.accessibleIcon,
  FontAwesomeIcons.accessibleIcon,
  FontAwesomeIcons.accessibleIcon,
  FontAwesomeIcons.accessibleIcon,
  FontAwesomeIcons.accessibleIcon,
];

List colors = [
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.red,
  Colors.green
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
                Icon(
                  icons[index],
                  color: colors[index],
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
