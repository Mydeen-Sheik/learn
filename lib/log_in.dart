// import 'dart:math';
//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:learn/om_home.dart';
// import 'package:learn/otp.dart';
//
// class Login extends StatefulWidget {
//   // const Login({Key? key}) : super(key: key);
//
//   @override
//   _LoginState createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//   TextEditingController _controller = TextEditingController();
//   /*var phoneController = TextEditingController();
//   var otpController = TextEditingController();
//
//   String verificationId = "";
//
//   FirebaseAuth auth = FirebaseAuth.instance;
//
//   void signInWithPhoneAuthCredential(
//       PhoneAuthCredential phoneAuthCredential) async {
//     try {
//       final authCredential =
//           await auth.signInWithCredential(phoneAuthCredential);
//       if (authCredential.user != null) {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => HomeOm()));
//       }
//     } on FirebaseAuthException catch (e) {}
//     print(e);
//   }
// */
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios),
//           onPressed: () {},
//         ),
//       ),
//       /*  body: Container(
//         child: Column(children: <Widget>[
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: TextField(
//               keyboardType: TextInputType.number,
//               controller: phoneController,
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(), hintText: 'Phone Number'),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: TextField(
//               keyboardType: TextInputType.number,
//               controller: otpController,
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(), hintText: 'OTP Number'),
//             ),
//           ),
//           TextButton(
//             onPressed: () {
//               fetchOtp();
//             },
//             child: Text(
//               'Fetch',
//             ),
//           ),
//           TextButton(
//             onPressed: () {
//               verify();
//             },
//             child: Text(
//               'Send',
//             ),
//           ),
//         ]),
//       ),*/
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Column(
//             children: [
//               Container(
//                 margin: EdgeInsets.only(top: 30),
//                 child: Center(
//                   child: Text(
//                     'phone Authenticate',
//                     style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//               Container(
//                 child: TextField(
//                   decoration: InputDecoration(
//                     hintText: 'Phone Number',
//                     prefix: Padding(
//                       padding: EdgeInsets.all(4),
//                       child: Text('+91'),
//                     ),
//                   ),
//                   maxLength: 10,
//                   keyboardType: TextInputType.number,
//                   controller: _controller,
//                 ),
//               ),
//             ],
//           ),
//           Container(
//             margin: EdgeInsets.all(10),
//             width: double.infinity,
//             child: FlatButton(
//               color: Colors.green,
//               onPressed: () {
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (context) => OtpScreen(_controller.text)));
//               },
//               child: Text(
//                 'Next ',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 13,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   /*Future<void> fetchOtp() async {
//     await auth.verifyPhoneNumber(
//         phoneNumber: phoneController.text.toString(),
//         verificationCompleted: (PhoneAuthCredential credential) async {
//           await auth.signInWithCredential(credential);
//         },
//         verificationFailed: (FirebaseAuthException e) {
//           if (e.code == 'invalid-phone-number') {
//             print('invalid phone number');
//           }
//         },
//         codeSent: (String verificationId, int? resendToken) async {
//           this.verificationId = verificationId;
//         },
//         codeAutoRetrievalTimeout: (String VerificationId) {});
//   }
//
//   Future<void> verify() async {
//     PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
//         verificationId: verificationId, smsCode: otpController.text.toString());
//     auth.signInWithCredential(phoneAuthCredential);
//   }*/
// }
