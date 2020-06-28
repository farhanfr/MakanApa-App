import 'package:get/get.dart';
import 'package:makan_apa_app/page/authentication/login/login_screen.dart';
import 'package:makan_apa_app/page/home/home_screen.dart';
import 'package:makan_apa_app/page/main_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetSharedPref{
  String tokenUser = "";

  checkLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();  
      tokenUser = (prefs.getString("tokenUser"));
    if (tokenUser != null) {
      Get.off(MainPage());
      print("user is logged in !!!");
    }
    else{
      Get.off(LoginScreen());
    }
  }
}