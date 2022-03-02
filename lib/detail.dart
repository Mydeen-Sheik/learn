import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final shape = StadiumBorder();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              child: Carousel(
                boxFit: BoxFit.cover,
                images: [
                  AssetImage('images/dubai.jpeg'),
                  AssetImage('images/dubai.jpeg'),
                  AssetImage('images/dubai.jpeg'),
                ],
                autoplay: false,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 6.0,
                dotIncreasedColor: Color(0xFFFF335C),
                dotBgColor: Colors.black26,
                noRadiusForIndicator: true,
                dotPosition: DotPosition.bottomLeft,
                dotHorizontalPadding: 10.0,
                dotVerticalPadding: 10.0,
                showIndicator: true,
                indicatorBgPadding: 7.0,
                moveIndicatorFromBottom: 20.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dubai Museum',
                    style: TextStyle(
                      color: Color(0xff444444),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'AED 3199',
                        style: TextStyle(
                          color: Color(0xff279BB4),
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Dubai - UAE',
                        style: TextStyle(
                          color: Color(0xffAAAAAA),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              height: 15,
              thickness: 3,
              indent: 10,
              endIndent: 10,
              color: Color(0xffE2E2E2),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About mt. catlin. ".toUpperCase(),
                    style: TextStyle(
                      color: Color(0xff222222),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Nunc justo eros, vehicula vel vehicula ut, lacinia a erat. Nam fringilla eros...Nullam aliquam interdum ipsum et tempor. Phasellus odio felis, scelerisque eu purus quis.",
                    style: TextStyle(
                      color: Color(0xff888888),
                      fontSize: 15,
                      letterSpacing: 1.4,
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(30),
              color: Color(0xffF2F2F2),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            child: Icon(
                              Icons.wifi,
                              color: Color(0xff646d75),
                            ),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Color(0xffe3e4e5),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Wifi\n',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff888888),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            child: Icon(
                              Icons.local_dining,
                              color: Color(0xff646d75),
                            ),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Color(0xffe3e4e5),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Hotel\n Restau',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff888888),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            child: Icon(
                              Icons.pool,
                              color: Color(0xff646d75),
                            ),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Color(0xffe3e4e5),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Swimming\n Pools',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff888888),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            child: Icon(
                              Icons.local_drink_outlined,
                              color: Color(0xff646d75),
                            ),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Color(0xffe3e4e5),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'In-Bar\n',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff888888),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            child: Icon(
                              Icons.local_parking_rounded,
                              color: Color(0xff646d75),
                            ),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Color(0xffe3e4e5),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Parking\n Spot',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff888888),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            child: Icon(
                              Icons.speaker_outlined,
                              color: Color(0xff646d75),
                            ),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Color(0xffe3e4e5),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Night Club\n',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff888888),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/map.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              width: double.infinity,
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Where is that',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff222222),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        alignment: Alignment.topCenter,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.circle,
                            color: Color.fromRGBO(0, 27, 222222, 0.8),
                            size: 20,
                          ),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(39, 164, 191, 0.5),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(39, 164, 191, 0.1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 260,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'Address'.toUpperCase(),
                              style: TextStyle(
                                color: Color(0xff888888),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              '1529 Taylor Street, New York NYC 10011, United States'
                                  .toUpperCase(),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Material(
                              shadowColor: Colors.black87,
                              elevation: 8,
                              color: Colors.transparent,
                              child: Container(
                                decoration: ShapeDecoration(
                                  shape: shape,
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      // Color(0xff27A4BF),
                                      Color(0xff3E3C3F),
                                      Color(0xff555555),
                                      Color(0xff27A4BF),
                                      Color(0xff27A4BF),
                                      Color(0xff27A4BF),
                                      Color(0xff27A4BF),
                                    ],
                                  ),
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                    primary: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                    elevation: 0,
                                  ),
                                  onPressed: () {
                                    Navigator;
                                  },
                                  child: Text(
                                    'Check it',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Terms & Condition',
                    style: TextStyle(
                        color: Color(0xff555555),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.horizontal_rule,
                        color: Color(0xff888888),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Payment at checkout',
                        style: TextStyle(
                          color: Color(0xff888888),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.horizontal_rule,
                        color: Color(0xff888888),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'WI-FI Network is off by 12:00pm',
                        style: TextStyle(
                          color: Color(0xff888888),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.horizontal_rule,
                        color: Color(0xff888888),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'No swimming after 10:00pm',
                        style: TextStyle(
                          color: Color(0xff888888),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.horizontal_rule,
                        color: Color(0xff888888),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'No more than 2 bags of luggage',
                        style: TextStyle(
                          color: Color(0xff888888),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.horizontal_rule,
                        color: Color(0xff888888),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'No singing while showering',
                        style: TextStyle(
                          color: Color(0xff888888),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.horizontal_rule,
                        color: Color(0xff888888),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'No Refunds',
                        style: TextStyle(
                          color: Color(0xff888888),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xff27A4BF),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_offer_outlined,
            ),
            label: 'Offer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'School',
          ),
        ],
      ),
    );
  }
}
