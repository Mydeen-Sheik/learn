// import 'package:flutter/material.dart';
//
// class IconFont extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Icon(
//       Icons.favorite,
//       color: Colors.white,
//       size: 100,
//     );
//   }
// }
//
// class splashPage extends StatelessWidget {
//   var goToPage;
//
//   const splashPage({Key? key, int duration}) : super(key: key);
//   int duration = 0;
//   Widget gotoPage;
//
//   splashPage({this.goToPage, this.duration});
//   @override
//   Widget build(BuildContext context) {
//     Future.delayed(Duration(seconds: this.duration), () {
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => this.goToPage));
//     });
//     return Scaffold(
//       body: Container(
//         color: Color(0xFF80c038),
//         child: Center(
//           child: IconFont(),
//         ),
//       ),
//     );
//   }
// }
//
// class WelcomPage extends StatefulWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Text('welcome'),
//     );
//   }
// }
