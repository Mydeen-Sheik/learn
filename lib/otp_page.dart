import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/signed_up.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override

  //opt
  Widget otpField() {
    return OTPTextField(
      length: 4,
      width: MediaQuery.of(context).size.width,
      fieldWidth: 60,
      otpFieldStyle: OtpFieldStyle(
        borderColor: Colors.white30,
        backgroundColor: Colors.white,
      ),
      style: TextStyle(
        fontSize: 17,
      ),
      textFieldAlignment: MainAxisAlignment.spaceAround,
      fieldStyle: FieldStyle.box,
      onCompleted: (pin) {
        print("Completed: " + pin);
      },
    );
  }

  //wiget
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xFF10cc49),
          onPressed: () {
            Navigator.of(context)
                .pop(MaterialPageRoute(builder: (context) => SignedUp()));
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.fromLTRB(30, 0, 30, 50),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/ux.png"),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Verify Mobile Number',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Please enter the OTP to verify your mobile number',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                otpField(),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: <Widget>[
                    MaterialButton(
                      color: Colors.black54,
                      onPressed: () {},
                      height: 50,
                      minWidth: double.infinity,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'CONFIRM',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Resend OTP",
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
      ),
    );
  }
}
