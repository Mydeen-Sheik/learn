import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:learn/holidays.dart';

import 'helper/utils.dart';
import 'model/category.dart';

class HolidayMenu extends StatelessWidget {
  List<HolidayCate> holidCard = HolidayPlanCate.getMockedCategories();
  @override
  Widget build(BuildContext context) {
    final shape = StadiumBorder();
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 50, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Holidays",
                  style: TextStyle(
                      fontSize: 30,
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
          Container(
            height: 190,
            width: double.infinity,
            margin: EdgeInsets.all(15),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/mas1.jpeg',
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
                                begin: Alignment.bottomRight,
                                end: Alignment.topRight,
                                colors: [
                                  Color(0xff27A4BF).withOpacity(0.75),
                                  Color(0xff3E5359).withOpacity(0.75),
                                ]),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 0,
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Container(
                            width: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 50,
                                ),
                                Icon(
                                  Icons.description,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                    child: Text(
                                      "Escorted Tours",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),
                                    ),
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HolidayGrid(),
                                        ))),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "450 Spots",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
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
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            margin: EdgeInsets.only(left: 15, right: 15, top: 5),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 180,
                      height: 180,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'images/mas3.jpeg',
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
                                          begin: Alignment.bottomRight,
                                          end: Alignment.topRight,
                                          colors: [
                                            Color(0xff27A4BF).withOpacity(0.75),
                                            Color(0xff3E5359).withOpacity(0.75),
                                          ]),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 0,
                                  child: Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Container(
                                      width: 200,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Icon(
                                            Icons.description,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Cultural Tours",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "257 Spots",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
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
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 180,
                      height: 230,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'images/mas2.jpeg',
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
                                          begin: Alignment.bottomRight,
                                          end: Alignment.topRight,
                                          colors: [
                                            Color(0xff27A4BF).withOpacity(0.75),
                                            Color(0xff3E5359).withOpacity(0.75),
                                          ]),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 0,
                                  child: Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Container(
                                      width: 200,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Icon(
                                            Icons.description,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Rail Package",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "357 Spots",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
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
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 180,
                      height: 230,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'images/mas2.jpeg',
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
                                          begin: Alignment.bottomRight,
                                          end: Alignment.topRight,
                                          colors: [
                                            Color(0xff27A4BF).withOpacity(0.75),
                                            Color(0xff3E5359).withOpacity(0.75),
                                          ]),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 0,
                                  child: Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Container(
                                      width: 200,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Icon(
                                            Icons.description,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Rail Package",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "357 Spots",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
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
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      width: 180,
                      height: 230,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'images/mas4.jpeg',
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
                                          begin: Alignment.bottomRight,
                                          end: Alignment.topRight,
                                          colors: [
                                            Color(0xff27A4BF).withOpacity(0.7),
                                            Color(0xff3E5359).withOpacity(0.7),
                                          ]),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 0,
                                  child: Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Container(
                                      width: 200,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Icon(
                                            Icons.description,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "City Breaks",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "117 Spots",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
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
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 180,
                      height: 180,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'images/mas5.jpeg',
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
                                          begin: Alignment.bottomRight,
                                          end: Alignment.topRight,
                                          colors: [
                                            Color(0xff27A4BF).withOpacity(0.55),
                                            Color(0xff3E5359).withOpacity(0.55),
                                          ]),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 0,
                                  child: Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Container(
                                      width: 200,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Icon(
                                            Icons.description,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            " Beach Holiday",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "147 Spots",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
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
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 180,
                      height: 230,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'images/mas4.jpeg',
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
                                          begin: Alignment.bottomRight,
                                          end: Alignment.topRight,
                                          colors: [
                                            Color(0xff27A4BF).withOpacity(0.7),
                                            Color(0xff3E5359).withOpacity(0.7),
                                          ]),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 0,
                                  child: Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Container(
                                      width: 200,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Icon(
                                            Icons.description,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Cultural Tours",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "450 Spots",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
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
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
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

class MasCard extends StatelessWidget {
  final String ImgSrc;
  MasCard({required this.ImgSrc});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            ImgSrc,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
