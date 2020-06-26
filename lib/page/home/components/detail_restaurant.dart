import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makan_apa_app/model/MenuRestaurantModel.dart';
import 'package:makan_apa_app/page/home/components/intro_restaurant.dart';
import 'package:makan_apa_app/page/home/components/list_restaurant_menu.dart';
import 'package:makan_apa_app/services/MenuRestaurantServices.dart';
import 'package:makan_apa_app/widget/constanst.dart';
import 'package:makan_apa_app/widget/current_app_bar.dart';

class DetailRestaurant extends StatefulWidget {
  @override
  _DetailRestaurantState createState() => _DetailRestaurantState();
}

class _DetailRestaurantState extends State<DetailRestaurant> {
  MenuRestaurantServices menuRestaurantServices;
  ScrollController _controller;
  bool silverCollapsed = false;
  String myTitle = "";

  //

  // _controller.addListener(() {
    //    if (_controller.offset > 220 && !_controller.position.outOfRange) {
    //       if(!silverCollapsed){
    //         myTitle = "silver collapsed !";
    //         silverCollapsed = true;
    //         setState(() {});
    //       }
    //    }
    //    if (_controller.offset <= 220 && !_controller.position.outOfRange) {
    //      if(silverCollapsed){
    //         myTitle = "";
    //         silverCollapsed = false;
    //         setState(() {});
    //      }
    //    }
    // });

    // a(){
    //    _controller = ScrollController();
    //   _controller.addListener(() {
    //    if (_controller.offset > 220 && !_controller.position.outOfRange) {
    //       if(!silverCollapsed){
    //         myTitle = "silver collapsed !";
    //         silverCollapsed = true;
    //         setState(() {});
    //       }
    //    }
    //    if (_controller.offset <= 220 && !_controller.position.outOfRange) {
    //      if(silverCollapsed){
    //         myTitle = "";
    //         silverCollapsed = false;
    //         setState(() {});
    //      }
    //    }
    // });
    // }

  @override
  void initState() {
    super.initState();
      menuRestaurantServices = MenuRestaurantServices();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      body: 
      FutureBuilder(
            future: menuRestaurantServices.getAllMenuTitle(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                      "Something wrong with message: ${snapshot.error.toString()}"),
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                List<MenuRestaurantModel> menuRestaurants = snapshot.data;
                print("DATANEE : ${snapshot.data}");
                return buildCustomScrollView(menuRestaurants);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      
    );
  }

  CustomScrollView buildCustomScrollView(List<MenuRestaurantModel> menuRestaurants) {
    return CustomScrollView(
      // controller:a(),
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
              title: Text("Test"),
              background: Image.network("https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg",
              fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
               IntroRestaurant(),
               ListRestaurantMenu(menuTotal: menuRestaurants.length,menuRestaurants: menuRestaurants,)
            ]),
          )
        ],
    );
  }
}