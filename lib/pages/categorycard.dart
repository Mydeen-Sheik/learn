import 'package:flutter/material.dart';
import 'package:learn/model/category.dart';
import 'package:learn/widgets/categoriesicon.dart';

class CategoryCard extends StatelessWidget {
  Category category;
  Function onCardClick;

  CategoryCard({required this.category, required this.onCardClick});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.onCardClick();
      },
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          height: 150,
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'images/' + this.category.imgName + '.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 120,
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
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: <Widget>[
                      CategoryIcon(
                          color: this.category.color,
                          iconName: this.category.icon),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        this.category.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 37,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCardHori extends StatelessWidget {
  Category category;
  Function onCardClick1;
  CategoryCardHori({required this.category, required this.onCardClick1});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.onCardClick1();
      },
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          height: 100,
          width: 230,
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'images/' + this.category.imgName + '.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 100,
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
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Text(
                        this.category.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CategoryIcon(
                          color: this.category.color,
                          iconName: this.category.icon),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UaeCard extends StatelessWidget {
  UaeDubai uaeDubai;
  Function onCardClick2;
  UaeCard({required this.uaeDubai, required this.onCardClick2});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.onCardClick2();
      },
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
          height: 120,
          width: 230,
          child: Stack(
            children: <Widget>[
              SizedBox(),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.white.withOpacity(0.9),
                          Colors.white.withOpacity(0.9)
                        ]),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'images/' + this.uaeDubai.imgName + '.jpeg',
                                  fit: BoxFit.cover,
                                  height: 90,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              this.uaeDubai.name,
                              style: TextStyle(
                                  color: Color(0xff444444),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$766",
                                  style: TextStyle(
                                    color: Color(0xff888888),
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "\$846",
                                  style: TextStyle(
                                      color: Color(0xff888888),
                                      fontSize: 14,
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(0xffAAAAAA),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  this.uaeDubai.subName,
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
