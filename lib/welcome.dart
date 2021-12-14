import 'package:flutter/material.dart';
import 'package:learn/log_in.dart';
import 'package:learn/sign_up.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
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
                    'Welcome',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Create an account and reach your business to thousonds of customers',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    color: Color(0xFF10cc49),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    height: 50,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xFF10cc49),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      'Getting Started',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Already have an account ? ",
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
