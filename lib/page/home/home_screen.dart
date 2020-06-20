import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:makan_apa_app/page/home/components/carousel_info.dart';
import 'package:makan_apa_app/page/home/components/food_category_one.dart';
import 'package:makan_apa_app/page/home/components/food_category_two.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Column(
          children: <Widget>[
            CarouselInfo(),
            SizedBox(height: 20.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Food Category",style: TextStyle(fontFamily:"Poppins",fontWeight: FontWeight.bold,fontSize: 20.0,color: primaryColor)),
            ),
            SizedBox(height: 20.0),
            FoodCategoryOne(),
            SizedBox(height: 25.0,),
            FoodCategoryTwo()
            
          ],
        ),
      ),
    );
  }
}

