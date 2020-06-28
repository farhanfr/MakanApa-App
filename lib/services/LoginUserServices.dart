import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' show Client;
import 'package:makan_apa_app/model/FailureModel.dart';
import 'package:makan_apa_app/model/UserModel.dart';
import 'package:makan_apa_app/page/home/home_screen.dart';
import 'package:makan_apa_app/widget/shared_pref.dart';

class LoginUserServices {
  final String url = "http://192.168.1.7:8000/api/v1/auth";
  Client client = Client();

  Future<bool> loginUser(String numberPhoneInp) async {
    final response = await client
        .post("$url/login/user", body: {"number_phone": numberPhoneInp});
    if (response.statusCode == 200) {
      // final data = [jsonDecode(response.body)];
      Map<String, dynamic> map = jsonDecode(response.body);
      var status = map["status"];
      var data = map["data"];
      if (status == true) {
        LoginUserModel loginUserModel = new LoginUserModel.fromJson(data);
        SharedPref().addIntToSF("id", loginUserModel.user.id);
        SharedPref().addStringToSF("tokenUser", loginUserModel.user.token);
        Get.to(HomeScreen());
        print(loginUserModel.user.token);
      } else {
        List<dynamic> data2 = map["message"];
        for (String i in data2) {
          print(i);
        }
      }
      return true;
    } else {
      print("failed23");
      return false;
    }
  }
}
