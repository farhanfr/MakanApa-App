import 'package:flutter/material.dart';
import 'package:makan_apa_app/widget/constanst.dart';
import 'package:makan_apa_app/widget/get_shared_pref.dart';
import 'package:makan_apa_app/widget/shared_pref.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = true;


  @override
  void initState() {
    super.initState();
    SharedPref().checkValues("tokenUser");
    Future.delayed(Duration(seconds: 3), () {
      GetSharedPref().checkLogin();
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/img/splashscreen.png",
            ),
            SizedBox(height: 30.0,),
            Text(
              "Makan Apa",
              // textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 32.0,
                  height: 1.5,
                  color: whiteColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins"),
            ),
            SizedBox(
              height: 20.0,
            ),
            if (isLoading)
              SizedBox(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[200]),
                ),
              )
            else
              Text("1")
          ],
        ),
      ),
    );
  }
}