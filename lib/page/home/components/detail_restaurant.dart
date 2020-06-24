import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makan_apa_app/page/home/components/intro_restaurant.dart';
import 'package:makan_apa_app/page/home/components/list_restaurant_menu.dart';
import 'package:makan_apa_app/widget/constanst.dart';
import 'package:makan_apa_app/widget/current_app_bar.dart';

class DetailRestaurant extends StatefulWidget {
  @override
  _DetailRestaurantState createState() => _DetailRestaurantState();
}

class _DetailRestaurantState extends State<DetailRestaurant> {
  ScrollController _controller;
  bool silverCollapsed = false;
  String myTitle = "";

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();

    _controller.addListener(() {
       if (_controller.offset > 220 && !_controller.position.outOfRange) {
          if(!silverCollapsed){
            myTitle = "silver collapsed !";
            silverCollapsed = true;
            setState(() {});
          }
       }
       if (_controller.offset <= 220 && !_controller.position.outOfRange) {
         if(silverCollapsed){
            myTitle = "";
            silverCollapsed = false;
            setState(() {});
         }
       }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      body: CustomScrollView(
        controller:_controller,
        scrollDirection: Axis.vertical,
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: primaryColor,
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
                Get.back();
              }),
              flexibleSpace: FlexibleSpaceBar(
                title: Text(myTitle),
                background: Image.network("https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg",
                fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                IntroRestaurant(),
                ListRestaurantMenu()
              ]),
            )
          ],
      ),
    );
  }
}