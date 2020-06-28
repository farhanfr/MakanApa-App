import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makan_apa_app/page/authentication/login/login_screen.dart';
// import 'package:makan_apa_app/auth/otp_firebase_services.dart' as fb;
import 'package:makan_apa_app/page/authentication/otp/otp_screen.dart';
import 'package:makan_apa_app/page/home/home_screen.dart';
import 'package:makan_apa_app/services/LoginUserServices.dart';
import 'package:makan_apa_app/widget/constanst.dart';


class LoginComponent extends StatefulWidget {
  const LoginComponent({
    Key key,
  }) : super(key: key);

  @override
  _LoginComponentState createState() => _LoginComponentState();
}

class _LoginComponentState extends State<LoginComponent> {
  LoginUserServices loginUserServices;

  TextEditingController inpNumberPhone = new TextEditingController();

  @override
  void initState() {
    super.initState();
    loginUserServices = LoginUserServices();
  }

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
                "Input your phone number to login",
                style: TextStyle(fontFamily: "Poppins",fontSize: 32.0,fontWeight: FontWeight.bold,color: whiteColor),
              ),
            ),
            SizedBox(height: 30.0),
            TextField(
              controller: inpNumberPhone,
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
                            "Login",
                            style: TextStyle(color: primaryColor),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          onPressed: () {
                          // // fb.OtpFirebaseServices(phoneNo: "082234039672");
                          //  fb.globalKey.currentState.verifyPhone();
                            loginUserServices.loginUser(inpNumberPhone.text);
                            
                          } 
                          ),
                    )
          ],
        ),
      ),
    );
  }
}
