// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/helper/utils.dart';
import 'dayplan.dart';

import 'model/category.dart';

class CateList extends StatelessWidget {
  List<CategoryList> category = Util.getMockedCategories();
  @override
  Widget build(BuildContext context) {
    final shape = StadiumBorder();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Offers',
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
      drawer: Drawer(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                                  height: 20,
                                  width: 22,
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CateList()));
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
                                  height: 22,
                                  width: 22,
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
                                  height: 22,
                                  width: 22,
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
                                  height: 20,
                                  width: 22,
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
                                  height: 20,
                                  width: 22,
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
            Expanded(
              child: ListView.builder(
                  itemCount: category.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return Container(
                      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                      height: 150,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'images/' + category[index].imgName + '.jpeg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: 120,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Colors.black45.withOpacity(0.4),
                                    Colors.black12.withOpacity(0.1),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            bottom: 0,
                            top: 0,
                            left: 0,
                            right: 0,
                          ),
                          Positioned(
                            bottom: 5,
                            left: 10,
                            child: Row(
                              children: [
                                ClipOval(
                                  child: Container(
                                    child: Image.asset(
                                      'images/' +
                                          category[index].iconImage +
                                          '.jpeg',
                                      height: 35,
                                      width: 35,
                                    ),
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  children: [
                                    InkWell(
                                      child: Text(
                                        category[index].name,
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          letterSpacing: 1.4,
                                        ),
                                      ),
                                      onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => DayPlan())),
                                    ),
                                    Text(
                                      category[index].subtitle,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          letterSpacing: 1.3),
                                    ),
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Stack(
                              children: [
                                // Positioned(
                                //   child: Container(
                                //     width: 85,
                                //     child: Image.asset(
                                //       'images/0fer.png',
                                //     ),
                                //   ),
                                //   right: 0,
                                // ),
                                Container(
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Image.asset(
                                          'images/ofer.png',
                                        ),
                                      ),
                                      Positioned(
                                        top: 5,
                                        left: 13,
                                        right: 0,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              category[index].offAmt,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                            ),
                                            Text(
                                              category[index].offLabel,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  width: 100,
                                ),
                                // Positioned(
                                //   right: 0,
                                //   top: 5,
                                //   child: Column(
                                //     children: [
                                //       Text(
                                //         category[index].offAmt,
                                //         style: TextStyle(
                                //           color: Colors.white,
                                //           fontSize: 20,
                                //         ),
                                //       ),
                                //       Text(
                                //         category[index].offLabel,
                                //         style: TextStyle(
                                //           color: Colors.white,
                                //           fontSize: 18,
                                //         ),
                                //       )
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
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
