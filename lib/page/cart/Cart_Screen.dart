import 'package:flutter/material.dart';
import 'package:makan_apa_app/page/cart/components/ListCartItem.dart';
import 'package:makan_apa_app/page/cart/components/order_now.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
            child: Text("Order summary",
                style: TextStyle(fontFamily: "Poppins", fontSize: 18.0)),
          ),
          ListCartItem(),
          SizedBox(height: 30.0,),
          OrderNow()

        ],
      ),
    ));
  }
}
