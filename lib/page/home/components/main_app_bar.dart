import 'package:flutter/material.dart';
import 'package:makan_apa_app/widget/constanst.dart';

AppBar mainAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0.0,
      title: RichText(text: TextSpan(
        children: [
          TextSpan(
            text: "Makan",
            style: TextStyle(color: secondaryColor,fontSize: 20.0,fontWeight: FontWeight.bold)
          ),
          TextSpan(
            text: "Apa",
            style: TextStyle(color:primaryColor,fontSize: 25.0,fontWeight: FontWeight.bold)
          )
        ]
      )),
    );
  }
