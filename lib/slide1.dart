import 'package:flutter/material.dart';
import 'package:scaled_list/scaled_list.dart';

class Slide1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          body: Center(
            child: ScaledList(
              itemCount: categories.length,
              itemColor: (index) {
                return kMixedColors[index % kMixedColors.length];
              },
              itemBuilder: (index, selectedIndex) {
                final category = categories[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: selectedIndex == index ? 50 : 60,
                      child: Image.asset(category.image),
                    ),
                    SizedBox(height: 15),
                    Text(
                      category.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: selectedIndex == index ? 25 : 20),
                    )
                  ],
                );
              },
            ),
          ),
        ));
  }

  final List<Color> kMixedColors = [
    Color(0xff71A5D7),
    Color(0xff72CCD4),
    Color(0xffFBAB57),
    Color(0xffF8B993),
    Color(0xff962D17),
    Color(0xffc657fb),
    Color(0xfffb8457),
  ];

  final List<Category> categories = [
    Category(image: "assets/images/1.png", name: "Offer 1"),
    Category(image: "assets/images/2.png", name: "Offer 2"),
    Category(image: "assets/images/3.png", name: "Offer 3"),
    Category(image: "assets/images/4.png", name: "Offer 4"),
    Category(image: "assets/images/5.png", name: "Offer 5"),
  ];
}

class Category {
  final String image;
  final String name;

  Category({@required this.image, @required this.name});
}