import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  final Widget child;

  DemoPage({Key key, this.child}) : super(key: key);

  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  String descText =
      "Description Line 1\nDescription Line 2\nDescription Line 3\nDescription Line 4\nDescription Line 5\nDescription Line 6\nDescription Line 7\nDescription Line 8";
  bool descTextShowFlag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DemoPage"),
      ),
      body: new Container(
        margin: EdgeInsets.all(16.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
                "Description Line Description Line nDescription Line Description Line Description Line 5Description Line 6Description Line 7Description Line 8",
                maxLines: descTextShowFlag ? 8 : 1,
                textAlign: TextAlign.start),
            InkWell(
              onTap: () {
                setState(() {
                  descTextShowFlag = !descTextShowFlag;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  descTextShowFlag
                      ? Text(
                          "Show Less",
                          style: TextStyle(color: Colors.blue),
                        )
                      : Text("Show More", style: TextStyle(color: Colors.blue))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
