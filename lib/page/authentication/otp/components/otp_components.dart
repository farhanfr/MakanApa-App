import 'package:flutter/material.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class OtpComponents extends StatefulWidget {
  @override
  _OtpComponentsState createState() => _OtpComponentsState();
}

class _OtpComponentsState extends State<OtpComponents> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
            child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Input the OTP",
                style: TextStyle(fontFamily: "Poppins",fontSize: 32.0,fontWeight: FontWeight.bold,color: whiteColor),
              ),
            ),
            SizedBox(height: 30.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Max 12 digis",
                labelText: "Phone Number",
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.greenAccent),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 50.0),
            ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width,
                      height: 50.0,
                      child: RaisedButton(
                          color: Colors.white,
                          child: Text(
                            "Check",
                            style: TextStyle(color: primaryColor),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          onPressed: (){}
                          ),
                    )
          ],
        ),
      ),
    );
  }
}