import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/model/category.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(
          'Booking History',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
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
          IconButton(
            onPressed: () {
              Navigator;
            },
            icon: Icon(Icons.search),
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
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Trips',
                          style: TextStyle(
                            color: Color(0xff222222),
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Text(
                      'Holidays',
                      style: TextStyle(
                        color: Color(0xff222222),
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 20, 10),
                child: Text(
                  "Current Booking",
                  style: TextStyle(
                    fontSize: 17,
                    letterSpacing: 1.3,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff444444),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        new BoxShadow(
                          color: Color(0xffe5e5e5),
                          blurRadius: 3.1,
                          offset: Offset(0.1, 0.1),
                        ),
                      ]),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Stack(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xff27A4BF),
                          child: IconButton(
                            padding: EdgeInsets.all(20),
                            onPressed: () {
                              Navigator;
                            },
                            icon: Icon(
                              Icons.flight,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Positioned(
                          left: 75,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Text(
                                    "Chennai",
                                    style: TextStyle(
                                        color: Color(0xff444444),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    color: Color(0xffbfbfc8),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Mumbai",
                                    style: TextStyle(
                                        color: Color(0xff444444),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "28 Oct, 2018 - 11:00AM",
                                style: TextStyle(
                                  color: Color(0xff888888),
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Emirates Airways",
                                style: TextStyle(
                                  color: Color(0xff888888),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          top: 0,
                        ),
                        Positioned(
                          top: -10,
                          right: -10,
                          child: Container(
                            child: Material(
                              child: IconButton(
                                onPressed: () {
                                  print('hello');
                                },
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Color(0xff888888),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //Past Booking
              Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 20, 10),
                child: Text(
                  "Past Booking",
                  style: TextStyle(
                    fontSize: 17,
                    letterSpacing: 1.3,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff444444),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        new BoxShadow(
                          color: Color(0xffe5e5e5),
                          blurRadius: 3.1,
                          offset: Offset(0.1, 0.1),
                        ),
                      ]),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Stack(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xff27A4BF),
                          child: IconButton(
                            padding: EdgeInsets.all(20),
                            onPressed: () {
                              Navigator;
                            },
                            icon: Icon(
                              Icons.flight,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Positioned(
                          left: 75,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Text(
                                    "Chennai",
                                    style: TextStyle(
                                        color: Color(0xff444444),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    color: Color(0xffbfbfc8),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Mumbai",
                                    style: TextStyle(
                                        color: Color(0xff444444),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "28 Oct, 2018 - 11:00AM",
                                style: TextStyle(
                                  color: Color(0xff888888),
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Emirates Airways",
                                style: TextStyle(
                                  color: Color(0xff888888),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          top: 0,
                        ),
                        Positioned(
                          top: -10,
                          right: -10,
                          child: Container(
                            child: Material(
                              child: IconButton(
                                onPressed: () {
                                  print('hello');
                                },
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Color(0xff888888),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        new BoxShadow(
                          color: Color(0xffe5e5e5),
                          blurRadius: 3.1,
                          offset: Offset(0.1, 0.1),
                        ),
                      ]),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Stack(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xff27A4BF),
                          child: IconButton(
                            padding: EdgeInsets.all(20),
                            onPressed: () {
                              Navigator;
                            },
                            icon: Icon(
                              Icons.flight,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Positioned(
                          left: 75,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Text(
                                    "Chennai",
                                    style: TextStyle(
                                        color: Color(0xff444444),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    color: Color(0xffbfbfc8),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Mumbai",
                                    style: TextStyle(
                                        color: Color(0xff444444),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "28 Oct, 2018 - 11:00AM",
                                style: TextStyle(
                                  color: Color(0xff888888),
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Emirates Airways",
                                style: TextStyle(
                                  color: Color(0xff888888),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          top: 0,
                        ),
                        Positioned(
                          top: -10,
                          right: -10,
                          child: Container(
                            child: Material(
                              child: IconButton(
                                onPressed: () {
                                  print('hello');
                                },
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Color(0xff888888),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        new BoxShadow(
                          color: Color(0xffe5e5e5),
                          blurRadius: 3.1,
                          offset: Offset(0.1, 0.1),
                        ),
                      ]),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Stack(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xff27A4BF),
                          child: IconButton(
                            padding: EdgeInsets.all(20),
                            onPressed: () {
                              Navigator;
                            },
                            icon: Icon(
                              Icons.flight,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Positioned(
                          left: 75,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Text(
                                    "Chennai",
                                    style: TextStyle(
                                        color: Color(0xff444444),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    color: Color(0xffbfbfc8),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Mumbai",
                                    style: TextStyle(
                                        color: Color(0xff444444),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "28 Oct, 2018 - 11:00AM",
                                style: TextStyle(
                                  color: Color(0xff888888),
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Emirates Airways",
                                style: TextStyle(
                                  color: Color(0xff888888),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          top: 0,
                        ),
                        Positioned(
                          top: -10,
                          right: -10,
                          child: Container(
                            child: Material(
                              child: IconButton(
                                onPressed: () {
                                  print('hello');
                                },
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Color(0xff888888),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        new BoxShadow(
                          color: Color(0xffe5e5e5),
                          blurRadius: 3.1,
                          offset: Offset(0.1, 0.1),
                        ),
                      ]),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Stack(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xff27A4BF),
                          child: IconButton(
                            padding: EdgeInsets.all(20),
                            onPressed: () {
                              Navigator;
                            },
                            icon: Icon(
                              Icons.flight,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Positioned(
                          left: 75,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Text(
                                    "Chennai",
                                    style: TextStyle(
                                        color: Color(0xff444444),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    color: Color(0xffbfbfc8),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Mumbai",
                                    style: TextStyle(
                                        color: Color(0xff444444),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "28 Oct, 2018 - 11:00AM",
                                style: TextStyle(
                                  color: Color(0xff888888),
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Emirates Airways",
                                style: TextStyle(
                                  color: Color(0xff888888),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          top: 0,
                        ),
                        Positioned(
                          top: -10,
                          right: -10,
                          child: Container(
                            child: Material(
                              child: IconButton(
                                onPressed: () {
                                  print('hello');
                                },
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Color(0xff888888),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        new BoxShadow(
                          color: Color(0xffe5e5e5),
                          blurRadius: 3.1,
                          offset: Offset(0.1, 0.1),
                        ),
                      ]),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Stack(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xff27A4BF),
                          child: IconButton(
                            padding: EdgeInsets.all(20),
                            onPressed: () {
                              Navigator;
                            },
                            icon: Icon(
                              Icons.flight,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Positioned(
                          left: 75,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Text(
                                    "Chennai",
                                    style: TextStyle(
                                        color: Color(0xff444444),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    color: Color(0xffbfbfc8),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Mumbai",
                                    style: TextStyle(
                                        color: Color(0xff444444),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "28 Oct, 2018 - 11:00AM",
                                style: TextStyle(
                                  color: Color(0xff888888),
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Emirates Airways",
                                style: TextStyle(
                                  color: Color(0xff888888),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          top: 0,
                        ),
                        Positioned(
                          top: -10,
                          right: -10,
                          child: Container(
                            child: Material(
                              child: IconButton(
                                onPressed: () {
                                  print('hello');
                                },
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Color(0xff888888),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        new BoxShadow(
                          color: Color(0xffe5e5e5),
                          blurRadius: 3.1,
                          offset: Offset(0.1, 0.1),
                        ),
                      ]),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Stack(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xff27A4BF),
                          child: IconButton(
                            padding: EdgeInsets.all(20),
                            onPressed: () {
                              Navigator;
                            },
                            icon: Icon(
                              Icons.flight,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Positioned(
                          left: 75,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Text(
                                    "Chennai",
                                    style: TextStyle(
                                        color: Color(0xff444444),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    color: Color(0xffbfbfc8),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Mumbai",
                                    style: TextStyle(
                                        color: Color(0xff444444),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "28 Oct, 2018 - 11:00AM",
                                style: TextStyle(
                                  color: Color(0xff888888),
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Emirates Airways",
                                style: TextStyle(
                                  color: Color(0xff888888),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          top: 0,
                        ),
                        Positioned(
                          top: -10,
                          right: -10,
                          child: Container(
                            child: Material(
                              child: IconButton(
                                onPressed: () {
                                  print('hello');
                                },
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Color(0xff888888),
                                ),
                              ),
                            ),
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
