import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Slide1 extends StatefulWidget {
  @override
  _Slide1State createState() => _Slide1State();
}

class _Slide1State extends State<Slide1> {
  final controller = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    var itemPics = [
      "https://i.ibb.co/N9K45y2/b-logo2.png",
      "https://i.ibb.co/N9K45y2/b-logo2.png",
      "https://i.ibb.co/N9K45y2/b-logo2.png",
      "https://i.ibb.co/N9K45y2/b-logo2.png",
      "https://i.ibb.co/N9K45y2/b-logo2.png",
      "https://i.ibb.co/N9K45y2/b-logo2.png",
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 16),
              SizedBox(
                height: 120,
                child: PageView(
                  controller: controller,
                  children: List.generate(
                      itemPics.length,
                      (index) => Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            child: Container(
                              height: 280,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  alignment: Alignment(0, 0),
                                  image: NetworkImage(itemPics[index]),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          )),
                ),
              ),
              SizedBox(height: 5),
              Container(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: itemPics.length,
                  effect: WormEffect(
                      dotColor: Colors.grey,
                      activeDotColor: Colors.cyan,
                      dotHeight: 10,
                      dotWidth: 10),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
