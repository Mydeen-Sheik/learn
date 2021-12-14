import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/signed_up.dart';
import 'package:learn/welcome.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  //form key
  final _formKey = GlobalKey<FormState>();

  //shop name
  final shopNameEditingController = TextEditingController();
  final ownerNameEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final mobileNumberEditingController = TextEditingController();
  final shopRegisterEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //shop name
    final shopNameField = TextFormField(
      autofocus: false,
      controller: shopNameEditingController,
      keyboardType: TextInputType.text,
      onSaved: (value) {
        shopNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        // hintText: "Shop Name",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    //owner name
    final ownerNameField = TextFormField(
      autofocus: false,
      controller: ownerNameEditingController,
      keyboardType: TextInputType.text,
      onSaved: (value) {
        ownerNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        // hintText: "Owner Name",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    //email
    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please enter your email");
        }
        //regexpression
        if (!RegExp("^[a-zA-z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please enter valid email ");
        }
        return null;
      },
      onSaved: (value) {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        // hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    //mobile number
    final mobileNumberField = TextFormField(
      autofocus: false,
      controller: mobileNumberEditingController,
      keyboardType: TextInputType.number,
      onSaved: (value) {
        mobileNumberEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        // hintText: "Mobile Number",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    //optional
    final shopRegisterNumberField = TextFormField(
      autofocus: false,
      controller: shopRegisterEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        shopRegisterEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        // hintText: "Shop Register Number(optional)",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    //button
    final proceedButton = Material(
      elevation: 0,
      borderRadius: BorderRadius.circular(5),
      color: Colors.black87,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignedUp()));
        },
        child: Text(
          'PROCEED',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );

    //Scafold
    return Scaffold(
      backgroundColor: Color(0xFF10cc49),
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context)
                .pop(MaterialPageRoute(builder: (context) => Welcome()));
          },
        ),
        title: Text('OWNADZ'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Card(
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              // color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // shop name
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Please enter basic detail to proceed'),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Shop Name',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      shopNameField,

                      // owner name
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Owner Name',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      ownerNameField,

                      // email
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      emailField,

                      // mobile number
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Shop Name',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      mobileNumberField,

                      //registrer shop name
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Shop Register Number (optional)',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      shopRegisterNumberField,

                      //proceed button
                      SizedBox(
                        height: 20,
                      ),
                      proceedButton,
                      SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
