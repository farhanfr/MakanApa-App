import 'dart:convert';

import 'package:http/http.dart' show Client;
import 'package:makan_apa_app/model/RestaurantModel.dart';

class RestaurantServices{
  final String url = "http://192.168.1.7:8000/api/v1/restaurant";
  Client client  = Client();

  Future<List<RestaurantModel>> getAllRestaurant() async{
    List<RestaurantModel> _list = [];
    final response = await client.get("$url/all");
    if(response.statusCode == 200){
      // final data = [jsonDecode(response.body)];
      Map<String, dynamic> map = jsonDecode(response.body);
      List<dynamic> data = map["data"];
      for (Map i in data) {
        _list.add(RestaurantModel.fromJson(i));
        // print("ISI $i");
      }
      print(_list);
      return _list;
    }
    else{
      print("failed");
      return null;
    }
  }
}