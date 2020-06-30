import 'dart:convert';

import 'package:http/http.dart' show Client;
import 'package:makan_apa_app/model/CartModel.dart';


class CartServices{
  final String url = "http://192.168.1.7:8000/api/v1/cart";
  Client client  = Client();

  Future<List<CartModel>> getCartItems() async{
    List<CartModel> _list = [];
    final response = await client.get("$url/all/user/?user_id=1");
    if(response.statusCode == 200){
      // final data = [jsonDecode(response.body)];
      Map<String, dynamic> map = jsonDecode(response.body);
      print(map);
      List<dynamic> data = map["data"];
      for (Map i in data) {
        _list.add(CartModel.fromJson(i));
        // print("ISI $i");
      }
      print(map);
      return _list;
    }
    else{
      print("failed23");
      return null;
    }
  }

  Future<int> getTotalCart() async{
    int _list;
    final response = await client.get("$url/get/totalcart/?user_id=1");
    if(response.statusCode == 200){
      // final data = [jsonDecode(response.body)];
      Map<String, dynamic> map = jsonDecode(response.body);
      // final cartTotalModel = cartTotalModelFromJson(map);
      print(map);
      int data2 = int.parse(map["data"]);
        _list = data2;
        // print("ISI $i");
      print("Total cart $data2");
      return _list;
    }
    else{
      print("failed23");
      return null;
    }
  }

Future<Null> updateQty(int qtyCounter, int idCart) async{
    final response = await client.put("$url/update/qty",body: {"id": idCart.toString(),"qty":qtyCounter.toString()});
    if(response.statusCode == 200){
      // final data = [jsonDecode(response.body)];
      Map<String, dynamic> map = jsonDecode(response.body);
      // final cartTotalModel = cartTotalModelFromJson(map);
      print(map);
      String data2 = map["message"];
        // print("ISI $i");
      print("$data2");
      
    }
    else{
      print("failed23");
      return null;
    }
  }


}
