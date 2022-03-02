import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart'
    as grid;
import 'package:learn/holiday_plan.dart';

import 'helper/utils.dart';
import 'model/category.dart';

class HolidayGrid extends StatelessWidget {
  List<Actived> holiCard = ActiveCat.getMockedCategories();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Stack(
            //   children: [
            //     Container(
            //       height: 220,
            //       width: double.infinity,
            //       decoration: BoxDecoration(
            //         image: DecorationImage(
            //           image: AssetImage('images/mas1.jpeg'),
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //       child: Container(
            //         decoration: BoxDecoration(
            //           gradient: LinearGradient(
            //             begin: Alignment.topCenter,
            //             end: Alignment.bottomCenter,
            //             colors: [
            //               Color(0xff27A4BF).withOpacity(0.7),
            //               Color(0xff3E5359).withOpacity(0.8),
            //             ],
            //           ),
            //         ),
            //         child: Padding(
            //           padding: EdgeInsets.all(20),
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             mainAxisAlignment: MainAxisAlignment.end,
            //             children: [
            //               Icon(
            //                 Icons.description,
            //                 color: Colors.white,
            //               ),
            //               SizedBox(
            //                 height: 10,
            //               ),
            //               Text(
            //                 'Escorted Tours',
            //                 style: TextStyle(
            //                   fontWeight: FontWeight.w500,
            //                   fontSize: 20,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //               SizedBox(
            //                 height: 10,
            //               ),
            //               Text(
            //                 '450 spots',
            //                 style: TextStyle(
            //                   fontSize: 15,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            Container(
              height: 250,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Positioned.fill(
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.zero,
                              topLeft: Radius.zero,
                            ),
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
                            // height: 80,
                            // width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                topRight: Radius.zero,
                                topLeft: Radius.zero,
                              ),
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
                                  InkWell(
                                    child: Icon(
                                      Icons.chevron_left,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HolidayMenu())),
                                  ),
                                  SizedBox(
                                    height: 40,
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
                                    "Escorted Tours",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  ),
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
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                mainAxisExtent: 260,
              ),
              padding: EdgeInsets.only(bottom: 10),
              itemCount: holiCard.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext ctx, int index) {
                return HalidayCard(
                  holiCard: holiCard[index],
                  onCardClick3: () {
                    Navigator;
                  },
                );
              },
            ),
            // Expanded(
            //   child: GridView.builder(
            //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 2,
            //         mainAxisSpacing: 1,
            //         crossAxisSpacing: 1,
            //         mainAxisExtent: 250,
            //       ),
            //       itemCount: category.length,
            //       // physics: NeverScrollableScrollPhysics(),
            //       // shrinkWrap: true,
            //       itemBuilder: (BuildContext ctx, int index) {
            //         return Container(
            //           margin: EdgeInsets.only(top: 10, left: 5, right: 5),
            //           height: 300,
            //           width: double.infinity,
            //         );
            //       }),
            // ),
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

class HalidayCard extends StatelessWidget {
  Actived holiCard;
  Function onCardClick3;
  HalidayCard({required this.holiCard, required this.onCardClick3});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.onCardClick3();
      },
      child: Container(
        child: Container(
          margin: EdgeInsets.all(10),
          height: 250,
          width: 230,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.white70.withOpacity(0.4),
                        Colors.white10.withOpacity(0.1),
                      ],
                    ),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 0.0,
                        offset: Offset(2, 2),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                bottom: 0,
                top: 0,
                left: 0,
                right: 0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                        width: 180.0,
                        height: 170.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            this.holiCard.imgNme,
                            fit: BoxFit.cover,
                            height: 130,
                            width: 180,
                          ),
                        )),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 5),
                    child: Text(
                      this.holiCard.title,
                      style: TextStyle(
                        color: Color(0xff444444),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      this.holiCard.price,
                      style: TextStyle(
                          color: Color(0xff27A4BF),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HolidayInside extends StatelessWidget {
  final String title;
  final String price;
  final String imgNme;

  HolidayInside(
      {required this.title, required this.price, required this.imgNme});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(title),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
            imgNme,
          ),
          fit: BoxFit.cover,
        ),
        gradient: LinearGradient(
          colors: [
            Colors.black26,
            Colors.black12,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
