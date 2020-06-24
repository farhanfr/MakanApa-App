import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makan_apa_app/page/home/components/carousel_info.dart';
import 'package:makan_apa_app/page/home/components/food_category_one.dart';
import 'package:makan_apa_app/page/home/components/food_category_two.dart';
import 'package:makan_apa_app/page/home/components/main_app_bar.dart';
import 'package:makan_apa_app/page/home/components/more_restaurant.dart';
import 'package:makan_apa_app/page/home/components/new_food_this_week.dart';
import 'package:makan_apa_app/page/home/components/other_food.dart';
import 'package:makan_apa_app/page/home/components/other_restaurant.dart';
import 'package:makan_apa_app/page/home/components/popular_food.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: mainAppBar(),
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: <Widget>[
                    CarouselInfo(),
                    SizedBox(height: 20.0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Food Category",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: primaryColor)),
                    ),
                    SizedBox(height: 20.0),
                    FoodCategoryOne(),
                    SizedBox(
                      height: 25.0,
                    ),
                    FoodCategoryTwo(),
                    SizedBox(height: 25.0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Popular Food",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: primaryColor)),
                    ),
                  ],
                ),
              ),
              PopularFood(),
              Text("New Food This Week",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: primaryColor)),
              SizedBox(
                height: 20.0,
              ),
              NewFoodThisWeek(),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Other Food May You Like...",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: primaryColor)),
                ),
              ),
              SizedBox(height: 20.0),
              OtherFood(),
              ButtonTheme(
                minWidth: 200.0,
                height: 50.0,
                child: RaisedButton(
                    color: primaryColor,
                    child: Text(
                      "More Food",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    onPressed: () => {}),
              ),
              SizedBox(height: 50.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Other Restaurant",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: primaryColor)),
                ),
              ),
              SizedBox(height: 20.0),
               OtherRestaurant(),
               ButtonTheme(
                minWidth: 200.0,
                height: 50.0,
                child: RaisedButton(
                    color: primaryColor,
                    child: Text(
                      "More Restaurant",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    onPressed: () => {
                      Get.to(MoreRestaurant())
                    }),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
