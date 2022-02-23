import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/travel.dart';
import 'package:learn/widgets/bottombar.dart';
import 'constants.dart';
import 'helper/appcolors.dart';
import 'helper/iconhelper.dart';
import 'main.dart';

class MyHomePage2 extends StatefulWidget {
  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  final CategoriesScroller categoriesScroller = CategoriesScroller();
  final CategoriesScroller2 categoriesScroller2 = CategoriesScroller2();
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;

  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = FOOD_DATA;
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add(Container(
          height: 120,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
              ]),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 10, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/${post["image"]}",
                      height: double.infinity,
                      fit: BoxFit.cover,
                      width: 100,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      post["name"],
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "\$ ${post["price"]}",
                      style: const TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      post["brand"],
                      style: const TextStyle(fontSize: 17, color: Colors.grey),
                    ),

                    // Text(
                    //   "\$ ${post["price"]}",
                    //   style: const TextStyle(
                    //       fontSize: 22,
                    //       color: Colors.black,
                    //       fontWeight: FontWeight.bold),
                    // ),
                  ],
                ),
              ],
            ),
          )));
    });
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
    controller.addListener(() {
      double value = controller.offset / 119;

      setState(() {
        topContainer = value;
        closeTopContainer = controller.offset > 50;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.30;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(),
        appBar: AppBar(
          title: IconFont(
            iconName: IconFontHelp.HOME,
            size: 23,
            color: AppColors.Main_Color,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: AppColors.Main_Color),
          actions: [
            IconButton(
              onPressed: () {
                Navigator;
              },
              icon: Icon(Icons.doorbell_sharp),
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
          height: size.height,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                    child: InkWell(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(3, 7, 3, 7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Ink.image(
                              image: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/128/3643/3643948.png'),
                              height: 25,
                              width: 25,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Insurance',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                    child: InkWell(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(3, 7, 3, 7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Ink.image(
                              image: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/128/3643/3643948.png'),
                              height: 25,
                              width: 25,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'UAE Attraction',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                    child: InkWell(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(3, 7, 3, 7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Ink.image(
                              image: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/128/3643/3643948.png'),
                              height: 25,
                              width: 25,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Holiday',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: closeTopContainer ? 0 : 1,
                child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: size.width,
                    alignment: Alignment.topCenter,
                    height: closeTopContainer ? 0 : categoryHeight,
                    child: categoriesScroller),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Holiday',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blue,
                      child: InkWell(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 7, 10, 7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // Ink.image(
                              //   image: NetworkImage(
                              //       'https://cdn-icons-png.flaticon.com/128/3643/3643948.png'),
                              //   height: 25,
                              //   width: 25,
                              //   fit: BoxFit.cover,
                              // ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'View All',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: closeTopContainer ? 0 : 1,
                child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: size.width,
                    alignment: Alignment.topCenter,
                    height: closeTopContainer ? 0 : categoryHeight,
                    child: categoriesScroller2),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Beach Hotel',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blue,
                      child: InkWell(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 7, 10, 7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // Ink.image(
                              //   image: NetworkImage(
                              //       'https://cdn-icons-png.flaticon.com/128/3643/3643948.png'),
                              //   height: 25,
                              //   width: 25,
                              //   fit: BoxFit.cover,
                              // ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'View All',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      controller: controller,
                      itemCount: itemsData.length,
                      // physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        double scale = 1.0;
                        return Align(
                          alignment: Alignment.topCenter,
                          child: itemsData[index],
                        );
                        // if (topContainer > 0.5) {
                        //   scale = index + 0.5 - topContainer;
                        //   if (scale < 0) {
                        //     scale = 0;
                        //   } else if (scale > 1) {
                        //     scale = 1;
                        //   }
                        // }
                        return Opacity(
                          opacity: scale,
                          child: Transform(
                            transform: Matrix4.identity()..scale(scale, scale),
                            alignment: Alignment.bottomCenter,
                            child: Align(
                                heightFactor: 0.7,
                                alignment: Alignment.topCenter,
                                child: itemsData[index]),
                          ),
                        );
                      })),
              CategoryBottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesScroller extends StatelessWidget {
  const CategoriesScroller();

  @override
  Widget build(BuildContext context) {
    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 50;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
              Container(
                width: 200,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/bvv.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 80,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.7),
                                Colors.transparent
                              ]),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      width: 150,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '799 Dubai',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Lorem ipsum Lorem ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                              child: InkWell(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Ink.image(
                                      image: NetworkImage(
                                          'https://cdn-icons-png.flaticon.com/128/3643/3643948.png'),
                                      height: 25,
                                      width: 25,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      'Submit',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 200,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/bvv.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 80,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.7),
                                Colors.transparent
                              ]),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      width: 150,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '799 Dubai',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Lorem ipsum Lorem ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                              child: InkWell(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Ink.image(
                                      image: NetworkImage(
                                          'https://cdn-icons-png.flaticon.com/128/3643/3643948.png'),
                                      height: 25,
                                      width: 25,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      'Submit',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 200,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/bvv.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 80,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.7),
                                Colors.transparent
                              ]),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      width: 150,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '799 Dubai',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Lorem ipsum Lorem ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                              child: InkWell(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Ink.image(
                                      image: NetworkImage(
                                          'https://cdn-icons-png.flaticon.com/128/3643/3643948.png'),
                                      height: 25,
                                      width: 25,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      'Submit',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 200,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/bvv.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 80,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.7),
                                Colors.transparent
                              ]),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      width: 150,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '799 Dubai',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Lorem ipsum Lorem ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                              child: InkWell(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Ink.image(
                                      image: NetworkImage(
                                          'https://cdn-icons-png.flaticon.com/128/3643/3643948.png'),
                                      height: 25,
                                      width: 25,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      'Submit',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Container(
              //   width: 150,
              //   margin: EdgeInsets.only(right: 20),
              //   height: categoryHeight,
              //   decoration: BoxDecoration(
              //       color: Colors.lightBlueAccent.shade400,
              //       borderRadius: BorderRadius.all(Radius.circular(20.0))),
              //   child: Padding(
              //     padding: const EdgeInsets.all(12.0),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: <Widget>[
              //         Text(
              //           "Super\nSaving",
              //           style: TextStyle(
              //               fontSize: 25,
              //               color: Colors.white,
              //               fontWeight: FontWeight.bold),
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Text(
              //           "20 Items",
              //           style: TextStyle(fontSize: 16, color: Colors.white),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesScroller2 extends StatelessWidget {
  const CategoriesScroller2();

  @override
  Widget build(BuildContext context) {
    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 50;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
              Container(
                width: 200,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/bvv.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 80,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.7),
                                Colors.transparent
                              ]),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      width: 150,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '799 Dubai',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Lorem ipsum Lorem ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                              child: InkWell(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Ink.image(
                                      image: NetworkImage(
                                          'https://cdn-icons-png.flaticon.com/128/3643/3643948.png'),
                                      height: 25,
                                      width: 25,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      'Submit',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 200,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/bvv.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 80,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.7),
                                Colors.transparent
                              ]),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      width: 150,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '799 Dubai',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Lorem ipsum Lorem ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                              child: InkWell(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Ink.image(
                                      image: NetworkImage(
                                          'https://cdn-icons-png.flaticon.com/128/3643/3643948.png'),
                                      height: 25,
                                      width: 25,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      'Submit',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 200,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/bvv.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 80,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.7),
                                Colors.transparent
                              ]),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      width: 150,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '799 Dubai',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Lorem ipsum Lorem ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                              child: InkWell(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Ink.image(
                                      image: NetworkImage(
                                          'https://cdn-icons-png.flaticon.com/128/3643/3643948.png'),
                                      height: 25,
                                      width: 25,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      'Submit',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 200,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/bvv.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 80,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.7),
                                Colors.transparent
                              ]),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      width: 150,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '799 Dubai',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Lorem ipsum Lorem ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                              child: InkWell(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Ink.image(
                                      image: NetworkImage(
                                          'https://cdn-icons-png.flaticon.com/128/3643/3643948.png'),
                                      height: 25,
                                      width: 25,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      'Submit',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Container(
              //   width: 150,
              //   margin: EdgeInsets.only(right: 20),
              //   height: categoryHeight,
              //   decoration: BoxDecoration(
              //       color: Colors.lightBlueAccent.shade400,
              //       borderRadius: BorderRadius.all(Radius.circular(20.0))),
              //   child: Padding(
              //     padding: const EdgeInsets.all(12.0),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: <Widget>[
              //         Text(
              //           "Super\nSaving",
              //           style: TextStyle(
              //               fontSize: 25,
              //               color: Colors.white,
              //               fontWeight: FontWeight.bold),
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Text(
              //           "20 Items",
              //           style: TextStyle(fontSize: 16, color: Colors.white),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
