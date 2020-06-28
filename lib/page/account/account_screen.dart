import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makan_apa_app/page/authentication/login/login_screen.dart';
import 'package:makan_apa_app/widget/constanst.dart';
import 'package:makan_apa_app/widget/shared_pref.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: <Widget>[
            InkWell(
              onTap: (){
                SharedPref().removeValues("tokenUser");
                Get.off(LoginScreen());
              },
              child: Text("Logout",style: TextStyle(color: Colors.red,fontSize: 16.0,fontFamily: "Poppins")),
            )
          ],
        ),
      ),
      
    );
  }
}