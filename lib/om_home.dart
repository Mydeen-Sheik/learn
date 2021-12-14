import 'package:flutter/material.dart';

class HomeOm extends StatefulWidget {
  const HomeOm({Key? key}) : super(key: key);

  @override
  _HomeOmState createState() => _HomeOmState();
}

class _HomeOmState extends State<HomeOm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF10cc49),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(30, 50, 30, 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/ux.png"),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    'from',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'INSTINCTS',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'CodaCaption-ExtraBold',
                        color: Colors.white),
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
