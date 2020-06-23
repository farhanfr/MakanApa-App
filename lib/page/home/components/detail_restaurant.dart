import 'package:flutter/material.dart';
import 'package:makan_apa_app/page/home/components/intro_restaurant.dart';
import 'package:makan_apa_app/page/home/components/list_restaurant_menu.dart';
import 'package:makan_apa_app/widget/constanst.dart';
import 'package:makan_apa_app/widget/current_app_bar.dart';

class DetailRestaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      appBar: currentAppBar("Detail", Colors.black),
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child:Image.asset("assets/img/bgtest.png",fit: BoxFit.cover,), 
            ),
            IntroRestaurant(),
            SizedBox(height: 20.0),
            ListRestaurantMenu()
          ],
        ),
      ),
    );
  }
}