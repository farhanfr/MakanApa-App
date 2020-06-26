import 'dart:convert';

import 'package:http/http.dart' show Client;
import 'package:makan_apa_app/model/MenuRestaurantModel.dart';

class MenuRestaurantServices{
  final String url = "http://192.168.1.7:8000/api/v1/menurestaurant";
  Client client  = Client();

  Future<List<MenuRestaurantModel>> getAllMenuTitle() async{
    List<MenuRestaurantModel> _list = [];
    final response = await client.get("$url/all/restaurant/?restaurant_id=1");
    if(response.statusCode == 200){
      // final data = [jsonDecode(response.body)];
      Map<String, dynamic> map = jsonDecode(response.body);
      print(map);
      List<dynamic> data = map["data"];
      for (Map i in data) {
        _list.add(MenuRestaurantModel.fromJson(i));
        // print("ISI $i");
      }
      print(map);
      return _list;
    }
    else{
      print("failed");
      return null;
    }
  }

}