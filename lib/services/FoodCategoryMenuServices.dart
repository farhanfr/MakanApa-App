import 'dart:convert';

import 'package:http/http.dart' show Client;
import 'package:makan_apa_app/model/FoodCategoryModel.dart';

class FoodCategoryMenuServices{
  final String url = "http://192.168.1.7:8000/api/v1/foodcategory";
  Client client  = Client();

  Future<List<FoodCategoryModel>> getAllMenuFirst() async{
    List<FoodCategoryModel> _list = [];
    final response = await client.get("$url/all/first");
    if(response.statusCode == 200){
      // final data = [jsonDecode(response.body)];
      Map<String, dynamic> map = jsonDecode(response.body);
      List<dynamic> data = map["data"];
      for (Map i in data) {
        _list.add(FoodCategoryModel.fromJson(i));
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