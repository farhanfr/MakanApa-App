import 'package:flutter/material.dart';
import 'package:makan_apa_app/page/cart/components/detail_item_cart_content.dart';
import 'package:makan_apa_app/page/home/components/detail_add_cart_content.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class DetailItemCart {
  
  static void detailCart(context, int qty, int id) {
    showModalBottomSheet(
      backgroundColor: whiteColor,
        context: context,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))
        // ),
        builder: (BuildContext bc) {
          return Container(
            child: DetailItemCartContent(qty: qty,idCart: id,)
          );
        });
  }
}