// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:learn/welcome.dart';
// import 'package:pinput/pin_put/pin_put.dart';
//
// class OtpScreen extends StatefulWidget {
//   final String phone;
//   OtpScreen(this.phone);
//   @override
//   _OtpScreenState createState() => _OtpScreenState();
// }
//
// class _OtpScreenState extends State<OtpScreen> {
//   FirebaseAuth auth = FirebaseAuth.instance;
//   final snackBar = SnackBar(content: Text('invalid OTP'));
//   final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
//   late String _verificationCode;
//   final _pinPutController = TextEditingController();
//   final _pinPutFocusNode = FocusNode();
//   final BoxDecoration pinPutDecoration = BoxDecoration(
//     color: const Color.fromRGBO(43, 46, 66, 1),
//     borderRadius: BorderRadius.circular(10.0),
//     border: Border.all(
//       color: const Color.fromRGBO(126, 203, 224, 1),
//     ),
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldkey,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0.0,
//         title: Text(
//           'Otp Screen',
//           style: TextStyle(color: Colors.black),
//         ),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: <Widget>[
//           Container(
//             margin: EdgeInsets.only(top: 60),
//             child: Center(
//               child: Text(
//                 'verify +91${widget.phone}',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(30.0),
//             child: PinPut(
//               fieldsCount: 6,
//               withCursor: true,
//               textStyle: const TextStyle(fontSize: 25.0, color: Colors.white),
//               eachFieldWidth: 55.0,
//               eachFieldHeight: 55.0,
//               // onSubmit: (String pin) => _showSnackBar(pin),
//               focusNode: _pinPutFocusNode,
//               controller: _pinPutController,
//               submittedFieldDecoration: pinPutDecoration,
//               selectedFieldDecoration: pinPutDecoration,
//               followingFieldDecoration: pinPutDecoration,
//               pinAnimationType: PinAnimationType.fade,
//               onSubmit: (pin) async {
//                 try {
//                   await auth
//                       .signInWithCredential(PhoneAuthProvider.credential(
//                           verificationId: _verificationCode, smsCode: pin))
//                       .then((value) async {
//                     if (value.user != null) {
//                       Navigator.pushAndRemoveUntil(
//                           context,
//                           MaterialPageRoute(builder: (context) => Welcome()),
//                           (route) => false);
//                     }
//                   });
//                 } catch (e) {
//                   FocusScope.of(context).unfocus();
//                   _scaffoldkey.currentState?.showSnackBar(snackBar);
//                 }
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   _verifyPhone() async {
//     await FirebaseAuth.instance.verifyPhoneNumber(
//       phoneNumber: '+91${widget.phone}',
//       verificationCompleted: (PhoneAuthCredential credential) async {
//         await auth.signInWithCredential(credential).then((value) {
//           if (value.user != null) {
//             Navigator.pushAndRemoveUntil(
//                 context,
//                 MaterialPageRoute(builder: (context) => Welcome()),
//                 (route) => false);
//           }
//         });
//       },
//       verificationFailed: (FirebaseAuthException e) {
//         print(e.message);
//       },
//       codeSent: (String verificationId, int? resendToken) {
//         setState(() {
//           _verificationCode = verificationId;
//         });
//       },
//       codeAutoRetrievalTimeout: (String verificationId) {
//         _verificationCode = verificationId;
//       },
//       timeout: Duration(seconds: 30),
//     );
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _verifyPhone();
//   }
// }
