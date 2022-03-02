import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'helper/utils.dart';
import 'model/category.dart';

// var planlist = [
//   {
//     'time': '11.00 AM',
//     'title': 'Breakfast',
//     'subTitle': 'djsjsshshsfhsjf',
//     'image': 'images/treas.jpeg',
//   },
//   {
//     'time': '11.00 AM',
//     'title': 'Breakfast',
//     'subTitle': 'djsjsshshsfhsjf',
//     'image': 'images/treas.jpeg',
//   },
// ];

class DayPlan extends StatelessWidget {
  List<Plans> plans = Dayplan.getMockedCategories();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.dangerous),
        title: Text(
          'Day Plans',
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
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 10,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 8, right: 16),
                          child: Container(
                            height: 350,
                            width: 2,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '7.00 AM',
                          style: TextStyle(
                            color: Color(0xffAAAAAA),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Breackfast',
                          style: TextStyle(
                            color: Color(0xff444444),
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Aliquam interdum ipsum et tempor. Phasellus odiofelis, sceler.',
                          style: TextStyle(
                            color: Color(0xff888888),
                            fontSize: 19,
                            height: 1.4,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 330,
                          margin: EdgeInsets.only(right: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'images/cfee.jpeg',
                              fit: BoxFit.cover,
                              height: 200,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // child: ListView.builder(
                    //     itemCount: plans.length,
                    //     itemBuilder: (BuildContext ctx, int index) {
                    //       return Column(
                    //         children: [
                    //           Text(
                    //             plans[index].time,
                    //             style: TextStyle(
                    //               color: Color(0xffAAAAAA),
                    //               fontSize: 16,
                    //               fontWeight: FontWeight.w600,
                    //             ),
                    //           ),
                    //           Text(
                    //             plans[index].title,
                    //             style: TextStyle(
                    //               color: Color(0xff444444),
                    //               fontSize: 24,
                    //               fontWeight: FontWeight.w400,
                    //             ),
                    //           ),
                    //           Text(
                    //             plans[index].description,
                    //             style: TextStyle(
                    //               color: Color(0xff888888),
                    //               fontSize: 19,
                    //               height: 1.4,
                    //             ),
                    //           ),
                    //           Container(
                    //             width: 300,
                    //             child: Image.asset(
                    //               'images/treas.jpeg',
                    //               width: 300,
                    //             ),
                    //             decoration: BoxDecoration(
                    //                 borderRadius: BorderRadius.circular(20),
                    //                 color: Colors.transparent),
                    //           ),
                    //         ],
                    //       );
                    //     }),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
              Divider(
                height: 0,
                endIndent: 50,
                thickness: 1,
                indent: 50,
                color: Colors.grey,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 10,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 8, right: 16),
                          child: Container(
                            height: 350,
                            width: 2,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      width: 330,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '11.00 AM',
                            style: TextStyle(
                              color: Color(0xffAAAAAA),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Camel Riding',
                            style: TextStyle(
                              color: Color(0xff444444),
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Aliquam interdum ipsum et tempor. Phasellus odiofelis, sceler.',
                            style: TextStyle(
                              color: Color(0xff888888),
                              fontSize: 19,
                              height: 1.4,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 330,
                            margin: EdgeInsets.only(right: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'images/treas.jpeg',
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          // child: Stepper(
          //   steps: [
          //     Step(
          //       title: Text("11.00 -AM"),
          //       content: Text("Stepper"),
          //       subtitle: Text("actuve"),
          //       state: StepState.complete,
          //       isActive: true,
          //     ),
          //     Step(
          //       title: Text("11.00 -AM"),
          //       content: Text("Stepper"),
          //       subtitle: Text("actuve"),
          //       state: StepState.complete,
          //       isActive: true,
          //     ),
          //   ],
          // ),
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
