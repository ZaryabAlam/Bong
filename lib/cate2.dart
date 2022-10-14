import 'package:flutter/material.dart';

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
  Icons.card_giftcard_rounded,
  Icons.history_rounded,
  Icons.shopping_bag_rounded,
  Icons.account_balance_wallet_rounded,
  Icons.fingerprint_rounded,
  Icons.airplanemode_on_rounded,
  Icons.sim_card_rounded,
  Icons.view_comfy_rounded,
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
                  size: 50,
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
