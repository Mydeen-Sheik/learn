import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/pages/categorycard.dart';
import 'package:learn/widgets/bottombar.dart';

import 'helper/appcolors.dart';
import 'helper/iconhelper.dart';
import 'helper/utils.dart';
import 'main.dart';
import 'model/category.dart';

class Home extends StatelessWidget {
  List<UaeDubai> uaeDubai = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    final shape = StadiumBorder();
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Image(
          image: AssetImage(
            'images/logot.jpeg',
          ),
          height: 35,
          width: 90,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator;
            },
            icon: Icon(Icons.doorbell),
          ),
          // Container(
          //   margin: EdgeInsets.only(right: 10),
          //   padding: EdgeInsets.all(10),
          //   child: ClipOval(
          //     child: Image.asset('images/logo.jpg'),
          //
          //   ),
          // ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 40,
                child: ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        shadowColor: Colors.black87,
                        elevation: 0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: ShapeDecoration(
                            shape: shape,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xff3E3C3F),
                                Color(0xff27A4BF),
                                Color(0xff27A4BF),
                                Color(0xff27A4BF),
                                Color(0xff3E3C3F),
                              ],
                            ),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                              elevation: 0,
                            ),
                            onPressed: () {
                              Navigator;
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFF0099EE),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 1.0),
                                        offset: Offset(0, 0),
                                        blurRadius: 5.9,
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Image(
                                    image: AssetImage('images/bt1.jpeg'),
                                    height: 25,
                                    width: 25,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Flight',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Material(
                        shadowColor: Colors.black87,
                        elevation: 0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: ShapeDecoration(
                            shape: shape,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xff3E3C3F),
                                Color(0xff27A4BF),
                                Color(0xff27A4BF),
                                Color(0xff27A4BF),
                                Color(0xff3E3C3F),
                              ],
                            ),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                              elevation: 0,
                            ),
                            onPressed: () {
                              Navigator;
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 1.0),
                                        offset: Offset(0, 0),
                                        blurRadius: 8.9,
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Image(
                                    image: AssetImage('images/bt2.jpeg'),
                                    height: 25,
                                    width: 25,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Hotel',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Material(
                        shadowColor: Colors.black87,
                        elevation: 0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: ShapeDecoration(
                            shape: shape,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xff3E3C3F),
                                Color(0xff27A4BF),
                                Color(0xff27A4BF),
                                Color(0xff27A4BF),
                                Color(0xff3E3C3F),
                              ],
                            ),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                              elevation: 0,
                            ),
                            onPressed: () {
                              Navigator;
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 1.0),
                                        offset: Offset(0, 0),
                                        blurRadius: 8.9,
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Image(
                                    image: AssetImage('images/insurance.png'),
                                    height: 25,
                                    width: 25,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Insurance',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Material(
                        shadowColor: Colors.black87,
                        elevation: 0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: ShapeDecoration(
                            shape: shape,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xff3E3C3F),
                                Color(0xff27A4BF),
                                Color(0xff27A4BF),
                                Color(0xff27A4BF),
                                Color(0xff3E3C3F),
                              ],
                            ),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                              elevation: 0,
                            ),
                            onPressed: () {
                              Navigator;
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFF0099EE),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 1.0),
                                        offset: Offset(0, 0),
                                        blurRadius: 5.9,
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Image(
                                    image: AssetImage('images/bt3.jpeg'),
                                    height: 25,
                                    width: 25,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'UAE Attraction',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Material(
                        shadowColor: Colors.black87,
                        elevation: 0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: ShapeDecoration(
                            shape: shape,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xff3E3C3F),
                                Color(0xff27A4BF),
                                Color(0xff27A4BF),
                                Color(0xff27A4BF),
                                Color(0xff3E3C3F),
                              ],
                            ),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                              elevation: 0,
                            ),
                            onPressed: () {
                              Navigator;
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 1.0),
                                        offset: Offset(0, 0),
                                        blurRadius: 5.9,
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Image(
                                    image: AssetImage('images/bt5.jpeg'),
                                    height: 25,
                                    width: 25,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Holiday',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Row(
                    children: [
                      Container(
                        height: 300,
                        width: 250,
                        margin: EdgeInsets.all(5),
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'images/slid1.jpeg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    top: 0,
                                    child: Container(
                                      height: 80,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.topCenter,
                                            colors: [
                                              Colors.black.withOpacity(0.2),
                                              Colors.black.withOpacity(0.3),
                                            ]),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 40,
                                    left: 0,
                                    child: Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Container(
                                        width: 200,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '\$799 Dubai',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "An exquisite trip you'll rave about to your friends",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 15,
                                    left: 10,
                                    child: Material(
                                      shadowColor: Colors.transparent,
                                      elevation: 8,
                                      color: Colors.transparent,
                                      child: Container(
                                        decoration: ShapeDecoration(
                                          shape: shape,
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xffF2F2F2),
                                              Color(0xffF2F2F2),
                                              Color(0xffF2F2F2),
                                            ],
                                          ),
                                        ),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            padding: EdgeInsets.fromLTRB(
                                                20, 5, 20, 5),
                                            primary: Colors.transparent,
                                            shadowColor: Colors.transparent,
                                            elevation: 0,
                                          ),
                                          onPressed: () {
                                            Navigator;
                                          },
                                          child: Text(
                                            'See all',
                                            style: TextStyle(
                                              color: Color(0xff444444),
                                              fontSize: 14,
                                            ),
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
                      ),
                      Container(
                        height: 300,
                        width: 250,
                        margin: EdgeInsets.all(5),
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'images/slid2.jpeg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    top: 0,
                                    child: Container(
                                      height: 80,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.topCenter,
                                            colors: [
                                              Colors.black.withOpacity(0.3),
                                              Colors.black.withOpacity(0.3),
                                            ]),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 40,
                                    left: 0,
                                    child: Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Container(
                                        width: 200,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "\$799 Dubai",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "An exquisite trip you'll rave about to your friends",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 15,
                                    left: 10,
                                    child: Material(
                                      shadowColor: Colors.transparent,
                                      elevation: 8,
                                      color: Colors.transparent,
                                      child: Container(
                                        decoration: ShapeDecoration(
                                          shape: shape,
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xffF2F2F2),
                                              Color(0xffF2F2F2),
                                              Color(0xffF2F2F2),
                                            ],
                                          ),
                                        ),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            padding: EdgeInsets.fromLTRB(
                                                20, 5, 20, 5),
                                            primary: Colors.transparent,
                                            shadowColor: Colors.transparent,
                                            elevation: 0,
                                          ),
                                          onPressed: () {
                                            Navigator;
                                          },
                                          child: Text(
                                            'See all',
                                            style: TextStyle(
                                              color: Color(0xff444444),
                                              fontSize: 14,
                                            ),
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
                      ),
                      Container(
                        height: 300,
                        width: 250,
                        margin: EdgeInsets.all(5),
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'images/slid2.jpeg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    top: 0,
                                    child: Container(
                                      height: 80,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.topCenter,
                                            colors: [
                                              Colors.black.withOpacity(0.3),
                                              Colors.black.withOpacity(0.3),
                                            ]),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 40,
                                    left: 0,
                                    child: Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Container(
                                        width: 200,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "\$799 Dubai",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "An exquisite trip you'll rave about to your friends",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 15,
                                    left: 10,
                                    child: Material(
                                      shadowColor: Colors.transparent,
                                      elevation: 8,
                                      color: Colors.transparent,
                                      child: Container(
                                        decoration: ShapeDecoration(
                                          shape: shape,
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xffF2F2F2),
                                              Color(0xffF2F2F2),
                                              Color(0xffF2F2F2),
                                            ],
                                          ),
                                        ),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            padding: EdgeInsets.fromLTRB(
                                                20, 5, 20, 5),
                                            primary: Colors.transparent,
                                            shadowColor: Colors.transparent,
                                            elevation: 0,
                                          ),
                                          onPressed: () {
                                            Navigator;
                                          },
                                          child: Text(
                                            'See all',
                                            style: TextStyle(
                                              color: Color(0xff444444),
                                              fontSize: 14,
                                            ),
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
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Holidays",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff444444)),
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
                              Color(0xff27A4BF),
                              Color(0xff3E3C3F),
                              Color(0xff27A4BF),
                            ],
                          ),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                            elevation: 0,
                          ),
                          onPressed: () {
                            Navigator;
                          },
                          child: Text(
                            'See all',
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
              SizedBox(
                height: 240,
                child: ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Row(
                    children: [
                      Container(
                        height: 220,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffFAFAFA),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.1, 0.1),
                              blurRadius: 3.3,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(5),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 140,
                                width: 140,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'images/hl1.jpeg',
                                        fit: BoxFit.cover,
                                        height: 140,
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Text("4 Days"),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(8, 5, 8, 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Moscow",
                                      style: TextStyle(
                                          color: Color(0xff444444),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "AUM 766",
                                      style: TextStyle(
                                        color: Color(0xff27A4BF),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      ),
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
                      ),
                      Container(
                        height: 220,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xfffafafa),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0.1, 0.1),
                              color: Colors.black12,
                              blurRadius: 3.1,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(5),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 140,
                                width: 150,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'images/hl2.jpeg',
                                        fit: BoxFit.cover,
                                        height: 140,
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Text("4 Days"),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(8, 5, 8, 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Yamen",
                                      style: TextStyle(
                                          color: Color(0xff444444),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "AUM 766",
                                      style: TextStyle(
                                        color: Color(0xff27A4BF),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      ),
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
                      ),
                      Container(
                        height: 220,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xfffafafa),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0.1, 0.1),
                              color: Colors.black12,
                              blurRadius: 3.1,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(5),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 140,
                                width: 140,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'images/hl3.jpeg',
                                        fit: BoxFit.cover,
                                        height: 140,
                                        width: double.infinity,
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Text("4 Days"),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(8, 5, 8, 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Dubai Museum",
                                      style: TextStyle(
                                          color: Color(0xff444444),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "AUM 766",
                                      style: TextStyle(
                                        color: Color(0xff27A4BF),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      ),
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
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Beach Hotels",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff444444)),
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
                              Color(0xff27A4BF),
                              Color(0xff3E3C3F),
                              Color(0xff27A4BF),
                            ],
                          ),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                            elevation: 0,
                          ),
                          onPressed: () {
                            Navigator;
                          },
                          child: Text(
                            'See all',
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
              ListView.builder(
                padding: EdgeInsets.only(bottom: 10),
                itemCount: uaeDubai.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext ctx, int index) {
                  return UaeCard(
                    uaeDubai: uaeDubai[index],
                    onCardClick2: () {
                      Navigator;
                    },
                  );
                },
              ),
            ],
          ),
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

// class List extends StatelessWidget {
//   const List({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         ListTile(
//           leading: Icon(Icons.doorbell_sharp),
//           subtitle: Text('799'),
//           title: Text(
//             'Hotal Blue Lahoon',
//             style: TextStyle(
//               fontSize: 19,
//               color: Colors.black12,
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         ListTile(
//           leading: Icon(Icons.doorbell_sharp),
//           subtitle: Text('799'),
//           title: Text(
//             'Hotal Blue Lahoon',
//             style: TextStyle(
//               fontSize: 19,
//               color: Colors.black12,
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         ListTile(
//           leading: Icon(Icons.doorbell_sharp),
//           subtitle: Text('799'),
//           title: Text(
//             'Hotal Blue Lahoon',
//             style: TextStyle(
//               fontSize: 19,
//               color: Colors.black12,
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         ListTile(
//           leading: Icon(Icons.doorbell_sharp),
//           subtitle: Text('799'),
//           title: Text(
//             'Hotal Blue Lahoon',
//             style: TextStyle(
//               fontSize: 19,
//               color: Colors.black12,
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         ListTile(
//           leading: Icon(Icons.doorbell_sharp),
//           subtitle: Text('799'),
//           title: Text(
//             'Hotal Blue Lahoon',
//             style: TextStyle(
//               fontSize: 19,
//               color: Colors.black12,
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         ListTile(
//           leading: Icon(Icons.doorbell_sharp),
//           subtitle: Text('799'),
//           title: Text(
//             'Hotal Blue Lahoon',
//             style: TextStyle(
//               fontSize: 19,
//               color: Colors.black12,
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         ListTile(
//           leading: Icon(Icons.doorbell_sharp),
//           subtitle: Text('799'),
//           title: Text(
//             'Hotal Blue Lahoon',
//             style: TextStyle(
//               fontSize: 19,
//               color: Colors.black12,
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 5,
//         ),
//       ],
//     );
//   }
// }
