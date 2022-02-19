import 'package:flutter/material.dart';
import 'package:learn/helper/appcolors.dart';
import 'package:learn/helper/iconhelper.dart';
import 'package:learn/pages/clist.dart';

import '../main.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  'images/ux.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: ClipOval(
                      child: Container(
                        width: 180,
                        height: 180,
                        color: AppColors.Main_Color,
                        child: IconFont(
                          iconName: IconFontHelp.HOME,
                          color: Colors.white,
                          size: 100,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Flutter',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Flutter Developer \ntutorial',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: FlatButton(
                      onPressed: () {
                        Navigator;
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: AppColors.Main_Color,
                      padding: EdgeInsets.all(25),
                      child: Text(
                        'Click Button',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      bottom: 20.0,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: AppColors.Main_Color.withOpacity(0.2),
                          highlightColor: AppColors.Main_Color.withOpacity(0.2),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CategoryList()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.Main_Color,
                                  fontWeight: FontWeight.bold),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.transparent,
                                border: Border.all(
                                  color: AppColors.Main_Color,
                                  width: 3,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
