import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Travel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator;
                        },
                        icon: Icon(Icons.menu),
                      ),
                      Text(
                        'data',
                        style: TextStyle(fontSize: 25),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator;
                        },
                        icon: Icon(Icons.alarm),
                      ),
                    ],
                  ),
                ),
                BannerWidgetArea(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

var bannerItems = [
  'UAE',
  'UAE',
  'UAE',
  'UAE',
];
var bannerImages = [
  'images/bvv.jpg',
  'images/bvv.jpg',
  'images/bvv.jpg',
  'images/bvv.jpg'
];

class BannerWidgetArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    PageController controller =
        PageController(initialPage: 1, viewportFraction: 0.8);
    List<Widget> banners = [];

    for (int x = 0; x < bannerItems.length; x++) {
      var bannerView = Padding(
        padding: EdgeInsets.all(12),
        child: Container(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff000036),
                        offset: Offset(4.0, 4.0),
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                      ),
                    ]),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  bannerImages[x],
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bannerItems[x],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
      banners.add(bannerView);
    }
    return Container(
      height: screenWidth * 9 / 16,
      width: screenWidth,
      child: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: banners,
      ),
    );
  }
}
