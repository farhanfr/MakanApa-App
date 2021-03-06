import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makan_apa_app/model/FoodModel.dart';
import 'package:makan_apa_app/model/MenuRestaurantModel.dart';
import 'package:makan_apa_app/page/home/components/intro_restaurant.dart';
import 'package:makan_apa_app/page/home/components/list_restaurant_menu.dart';
import 'package:makan_apa_app/services/FoodServices.dart';
import 'package:makan_apa_app/services/MenuRestaurantServices.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class DetailRestaurant extends StatefulWidget {
  final String nameRestaurant,backPhotoRestaurant;

  const DetailRestaurant({Key key, this.nameRestaurant, this.backPhotoRestaurant}) : super(key: key);
  @override
  _DetailRestaurantState createState() => _DetailRestaurantState();
}

class _DetailRestaurantState extends State<DetailRestaurant> {
  MenuRestaurantServices menuRestaurantServices;
  FoodServices foodServices;
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
      foodServices = FoodServices();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      body: 
      FutureBuilder(
            future: Future.wait([foodServices.getAllFoodByRestaurant(),menuRestaurantServices.getAllMenuTitle()]),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                      "Something wrong with message: ${snapshot.error.toString()}"),
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                List<MenuRestaurantModel> menuRestaurants = snapshot.data[1];
                List<FoodModel> foodRestaurants = snapshot.data[0];
                print("DATANEE : ${snapshot.data}");
                return buildCustomScrollView(menuRestaurants,foodRestaurants);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      
    );
  }

  CustomScrollView buildCustomScrollView(List<MenuRestaurantModel> menuRestaurants, List<FoodModel> foodRestaurants) {
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
              background: Image.network("http://192.168.1.7:8000/img/${widget.backPhotoRestaurant}",
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.9),
              colorBlendMode: BlendMode.softLight,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
               IntroRestaurant(nameRestaurant: widget.nameRestaurant),
               ListRestaurantMenu(menuTotal: menuRestaurants.length,menuRestaurants: menuRestaurants,foodRestaurant:foodRestaurants ,)
            ]),
          )
        ],
    );
  }
}