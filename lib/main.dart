import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:learn/log_in.dart';
import 'package:learn/login.dart';
import 'package:learn/om_home.dart';
import 'package:learn/register.dart';
import 'package:learn/sign_up.dart';
import 'package:learn/welcome.dart';

import 'home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScroll(),
  ));
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  PageController page = PageController(initialPage: 0);
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            page.animateToPage(--pageIndex,
                duration: const Duration(milliseconds: 500),
                curve: Curves.linear);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.green,
        ),
        title: const Text(
          'Pageviewing',
          style: TextStyle(color: Colors.green),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // page.animateToPage(--pageIndex,
              //     duration: Duration(milliseconds: 500), curve: Curves.linear);
            },
            icon: const Icon(Icons.search),
            color: Colors.green,
          ),
          IconButton(
            onPressed: () {
              page.animateToPage(++pageIndex,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.linear);
            },
            icon: const Icon(Icons.arrow_forward_ios),
            color: Colors.green,
          ),
        ],
        backgroundColor: const Color(0xFFffffff),
        shadowColor: const Color(0xFFffffff),
      ),
      body: PageView(
        controller: page,
        children: [
          Container(
            color: Colors.blueGrey,
            child: const Center(
              child: Text(
                'Multiple Page',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Welcome',
                      style: TextStyle(
                        // color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                      'Create an account and reach your business to thousands of customers',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        // color: Colors.white,
                        fontSize: 18.0,
                      )),
                  const SizedBox(
                    height: 200.0,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(10.0),
                      backgroundColor: Colors.green,
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    child: const Text('Getting Started'),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'Already have an account ? ',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              elevation: 0.0,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                            },
                            child: const Text(
                              'Sign in ',
                              style: TextStyle(
                                  color: Colors.green, fontSize: 18.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.indigo,
            child: const Center(
              child: Text(
                'Multiple 3 rdPage',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
          Container(
            color: Colors.pink,
            child: const Center(
              child: Text(
                'Multiple 4th Page',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
