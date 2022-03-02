// // import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// // import 'package:fluttertoast/fluttertoast.dart';
// import 'package:learn/index_page.dart';
// import 'package:learn/model.dart';
// import 'main.dart';
//
// class Register extends StatefulWidget {
//   const Register({Key? key}) : super(key: key);
//
//   @override
//   _RegisterState createState() => _RegisterState();
// }
//
// class _RegisterState extends State<Register> {
//   //auth
//   final _auth = FirebaseAuth.instance;
//
//   // formkey
//   final _formKey = GlobalKey<FormState>();
//
//   // input kry
//   final firstNameEditingController = TextEditingController();
//   final lastNameEditingController = TextEditingController();
//   final emailEditingController = TextEditingController();
//   final passwordEditingController = TextEditingController();
//   final confirmPasswordEditingController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     // firstName
//     final firstNameField = TextFormField(
//       autofocus: false,
//       controller: firstNameEditingController,
//       keyboardType: TextInputType.name,
//       validator: (value) {
//         //regexpression
//         RegExp regex = new RegExp(r'^.{3,}$');
//         if (value!.isEmpty) {
//           return ("First Name required");
//         }
//         if (!regex.hasMatch(value)) {
//           return ("Please enter valid name(Min. 3 character)");
//         }
//         return null;
//       },
//       onSaved: (value) {
//         firstNameEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.account_circle),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "First Name",
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//       ),
//     );
//
//     // lastname
//     final lastNameField = TextFormField(
//       autofocus: false,
//       controller: lastNameEditingController,
//       keyboardType: TextInputType.name,
//       validator: (value) {
//         //regexpression
//         if (value!.isEmpty) {
//           return ("last Name required");
//         }
//         return null;
//       },
//       onSaved: (value) {
//         lastNameEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.account_circle),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "Last Name",
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//       ),
//     );
//
//     // email
//     final emailField = TextFormField(
//       autofocus: false,
//       controller: emailEditingController,
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
//         emailEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.mail),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "Email",
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//       ),
//     );
//     // password
//     final passwordField = TextFormField(
//       autofocus: false,
//       controller: passwordEditingController,
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
//         passwordEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.vpn_key),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "Password",
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//       ),
//     );
//
//     // confirmpswd
//     final confirmPasswordField = TextFormField(
//       autofocus: false,
//       controller: confirmPasswordEditingController,
//       obscureText: true,
//       validator: (value) {
//         if (confirmPasswordEditingController.text !=
//             passwordEditingController.text) {
//           return "password don't match";
//         }
//         return null;
//       },
//       onSaved: (value) {
//         confirmPasswordEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.done,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.vpn_key),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "Confirm Password",
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//       ),
//     );
//
//     //signup
//     final signUpButton = Material(
//       elevation: 5,
//       borderRadius: BorderRadius.circular(50),
//       color: Colors.green,
//       child: MaterialButton(
//         padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         minWidth: MediaQuery.of(context).size.width,
//         onPressed: () {
//           // signUp(emailEditingController.text, passwordEditingController.text);
//         },
//         child: Text(
//           'Sign Up',
//           style: TextStyle(
//               fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//
//     //scas
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back_ios,
//             color: Colors.green,
//           ),
//           onPressed: () {
//             //backbutton
//             Navigator.of(context).pop();
//           },
//         ),
//       ),
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
//                       height: 35,
//                     ),
//                     firstNameField,
//                     SizedBox(
//                       height: 20,
//                     ),
//                     lastNameField,
//                     SizedBox(
//                       height: 20,
//                     ),
//                     emailField,
//                     SizedBox(
//                       height: 20,
//                     ),
//                     passwordField,
//                     SizedBox(
//                       height: 20,
//                     ),
//                     confirmPasswordField,
//                     SizedBox(
//                       height: 20,
//                     ),
//                     signUpButton,
//                     SizedBox(
//                       height: 25,
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
//   //
//   // void signUp(String email, String password) async {
//   //   if (_formKey.currentState!.validate()) {
//   //     await _auth
//   //         .createUserWithEmailAndPassword(email: email, password: password)
//   //         .then((value) => {postDetailToFirestore()})
//   //         .catchError((e) {
//   //       Fluttertoast.showToast(msg: e!.message);
//   //     });
//   //   }
//   // }
//   //
//   // postDetailToFirestore() async {
//   //   // calling our firestore
//   //   //calling our user model
//   //   //sending these values
//   //
//   //   FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
//   //   User? user = _auth.currentUser;
//   //
//   //   UserModel userModel = UserModel();
//   //
//   //   //writing the all values
//   //   userModel.email = user!.email;
//   //   userModel.uid = user.uid;
//   //   userModel.firstName = firstNameEditingController.text;
//   //   userModel.lastName = lastNameEditingController.text;
//   //
//   //   await firebaseFirestore
//   //       .collection("users")
//   //       .doc(user.uid)
//   //       .set(userModel.toMap());
//   //   Fluttertoast.showToast(msg: "Account has been create successful");
//   //
//   //   Navigator.pushAndRemoveUntil(context,
//   //       MaterialPageRoute(builder: (context) => Homepage()), (route) => false);
//   // }
// }
