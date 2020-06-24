import 'package:flutter/material.dart';
import 'package:makan_apa_app/page/home/components/detail_add_cart_content.dart';
import 'package:makan_apa_app/page/home/components/more_category_bottomsheet.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class DetailAddCart{
  
  static void detailAddCartMethod(context) {
    showModalBottomSheet(
      backgroundColor: whiteColor,
        context: context,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))
        // ),
        builder: (BuildContext bc) {
          return Container(
            child: DetailAddCartContent()
          );
        });
  }
}
