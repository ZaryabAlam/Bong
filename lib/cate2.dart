import 'package:flutter/material.dart';

import 'extra.dart';

class Cate2 extends StatefulWidget {
  @override
  State<Cate2> createState() => _Cate2State();
}

class _Cate2State extends State<Cate2> {
  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;
    final List<String> entries = [
      'Zong Club Bundle',
      'Weekly Pro',
      'Monthly Pro',
      'WhatsApp Plus',
      'Zong Club Bundle',
      'Weekly Pro',
      'Monthly Pro',
      'WhatsApp Plus',
    ];
    final List<String> entries2 = [
      '50GB | 600 mins | 3000 PKR',
      '40GB | 250 mins | 399 PKR',
      '50GB | 600 mins | 1449 PKR',
      '5GB | 30 mins | 160 PKR',
      '50GB | 600 mins | 3000 PKR',
      '40GB | 250 mins | 399 PKR',
      '50GB | 600 mins | 1449 PKR',
      '5GB | 30 mins | 160 PKR',
    ];
    bool isSwitched = false;
    return Center(
        child: Card(
      elevation: 15,
      color: Colors.white,
      shadowColor: Colors.black87,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: _h * 0.45,
        width: _w * 0.85,
        child: Column(
          children: [
            ListTile(
              leading: Text("Hot Offers", style: TextStyle(fontSize: 18)),
              trailing: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Extra()));
                  },
                  child:
                      Text("View More", style: TextStyle(color: Colors.pink))),
            ),
            Container(
              height: _h * 0.36,
              width: _w * 0.85,
              child: ListView.separated(
                padding: EdgeInsets.only(top: 20),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 35,
                    child: ListTile(
                      leading: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            entries[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            entries2[index],
                            style: TextStyle(fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                      //subtitle: Text(entries2[index], style: TextStyle(fontSize: 15)),
                      trailing: Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                            print(isSwitched);
                          });
                        },
                        activeTrackColor: Colors.cyan[100],
                        activeColor: Colors.blue,
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
