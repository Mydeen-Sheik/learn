// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// // import 'package:fluttertoast/fluttertoast.dart';
// import 'package:learn/index_page.dart';
// import 'package:learn/register.dart';
//
// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);
//
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   //formkey
//   final _formKey = GlobalKey<FormState>();
//
//   //edit Controller
//   final TextEditingController emailController = new TextEditingController();
//   final TextEditingController passwordController = new TextEditingController();
//
//   //firebase
//   final _auth = FirebaseAuth.instance;
//
//   @override
//   Widget build(BuildContext context) {
//     //email field
//     final emailField = TextFormField(
//       autofocus: false,
//       controller: emailController,
//       keyboardType: TextInputType.emailAddress,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return ("Please enter your email");
//         }
//         //regexpression
//         if (!RegExp("^[a-zA-z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
//           return ("Please enter valid email ");
//         }
//         return null;
//       },
//       onSaved: (value) {
//         emailController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.mail),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "Email",
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//       ),
//     );
//
//     //password field
//     final passwordField = TextFormField(
//       autofocus: false,
//       controller: passwordController,
//       obscureText: true,
//       validator: (value) {
//         //regexpression
//         RegExp regex = new RegExp(r'^.{6,}$');
//         if (value!.isEmpty) {
//           return ("Password required");
//         }
//         if (!regex.hasMatch(value)) {
//           return ("Please enter valid password(Min. 6 character");
//         }
//       },
//       onSaved: (value) {
//         passwordController.text = value!;
//       },
//       textInputAction: TextInputAction.done,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.vpn_key),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "Password",
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//       ),
//     );
//
//     //login button
//     final loginButton = Material(
//       elevation: 5,
//       borderRadius: BorderRadius.circular(50),
//       color: Colors.green,
//       child: MaterialButton(
//         padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         minWidth: MediaQuery.of(context).size.width,
//         onPressed: () {
//           // signIn(emailController.text, passwordController.text);
//         },
//         child: Text(
//           'Login',
//           style: TextStyle(
//               fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//
//     //scafold
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: SingleChildScrollView(
//           child: Container(
//             color: Colors.white,
//             child: Padding(
//               padding: const EdgeInsets.all(30.0),
//               child: Form(
//                 key: _formKey,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     SizedBox(
//                       height: 200,
//                       child: Image.asset(
//                         "images/logo.jpg",
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 45,
//                     ),
//                     emailField,
//                     SizedBox(
//                       height: 25,
//                     ),
//                     passwordField,
//                     SizedBox(
//                       height: 35,
//                     ),
//                     loginButton,
//                     SizedBox(
//                       height: 15,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Text(
//                           "Don't have an account ? ",
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => Register()));
//                           },
//                           child: Text(
//                             "Sign Up",
//                             style: TextStyle(
//                               color: Colors.green,
//                               fontWeight: FontWeight.w600,
//                               fontSize: 15,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
// // login function
// //   void signIn(String email, String password) async {
// //     if (_formKey.currentState!.validate()) {
// //       await _auth
// //           .signInWithEmailAndPassword(email: email, password: password)
// //           .then((uid) => {
// //                 Fluttertoast.showToast(msg: "Login Successful"),
// //                 Navigator.of(context).pushReplacement(
// //                     MaterialPageRoute(builder: (context) => Homepage())),
// //               })
// //           .catchError((e) {
// //         Fluttertoast.showToast(msg: e!.message);
// //       });
// //     }
// //   }
// }
