import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/otp_page.dart';
import 'package:learn/sign_up.dart';

class SignedUp extends StatefulWidget {
  const SignedUp({Key? key}) : super(key: key);

  @override
  _SignedUpState createState() => _SignedUpState();
}

class _SignedUpState extends State<SignedUp> {
  //form key
  final _formKey = GlobalKey<FormState>();

  //shop name
  final serviceEditingController = TextEditingController();
  final addressEditingController = TextEditingController();
  final areaEditingController = TextEditingController();
  final pincodeEditingController = TextEditingController();
  final districtEditingController = TextEditingController();
  final stateEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //shop name
    final serviceField = TextFormField(
      autofocus: false,
      controller: serviceEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        serviceEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        // hintText: "Shop Name",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    //address
    final addressField = TextFormField(
      autofocus: false,
      controller: addressEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        addressEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        // hintText: "Owner Name",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    //area
    final areaField = TextFormField(
      autofocus: false,
      controller: areaEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        areaEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        // hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    //pin number
    final pincodeField = TextFormField(
      autofocus: false,
      controller: pincodeEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        pincodeEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        // hintText: "Mobile Number",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    //district
    final districtField = TextFormField(
      autofocus: false,
      controller: districtEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        districtEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        // hintText: "Shop Register Number(optional)",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    // state field
    final stateField = TextFormField(
      autofocus: false,
      controller: stateEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        stateEditingController.text = value!;
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
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => OtpPage()));
        },
        child: Text(
          'SIGN UP',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );

    //Scafold
    return Scaffold(
      backgroundColor: Color(0xFF10cc49),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context)
                .pop(MaterialPageRoute(builder: (context) => Signup()));
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
                      // service
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
                          Text('Please enter additional detail to proceed'),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Type of Service',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      serviceField,

                      // addresss
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Address',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      addressField,

                      // area
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Area',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      areaField,

                      // pin number
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Pincode',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      pincodeField,

                      //district
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'District',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      districtField,

                      //state
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'State',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      stateField,

                      //sign up button
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
