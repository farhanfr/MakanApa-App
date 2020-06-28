import 'package:flutter/material.dart';
import 'package:makan_apa_app/model/RestaurantModel.dart';
import 'package:makan_apa_app/page/home/components/more_restuarant_content.dart';
import 'package:makan_apa_app/services/RestaurantServices.dart';
import 'package:makan_apa_app/widget/current_app_bar.dart';

class MoreRestaurant extends StatefulWidget {
  @override
  _MoreRestaurantState createState() => _MoreRestaurantState();
}

class _MoreRestaurantState extends State<MoreRestaurant> {
  RestaurantServices restaurantServices;
  // List<int> data = [];
  // int currentLength = 0;

  // final int increment = 10;
  // bool isLoading = false;

  @override
  void initState() {
    // _loadMore();
    super.initState();
    restaurantServices = RestaurantServices();
  }

  // Future _loadMore() async {
  //   setState(() {
  //     isLoading = true;
  //   });
  //   // Add in an artificial delay
  //   await new Future.delayed(const Duration(seconds: 2));
  //   for (var i = currentLength; i <= currentLength + increment; i++) {
  //     data.add(i);
  //   }
  //   setState(() {
  //     isLoading = false;
  //     currentLength = data.length;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: currentAppBar("More Restaurant", Colors.black),
        body: FutureBuilder(
            future: restaurantServices.getAllRestaurant(),
            builder: (context, snapShot) {
              if (snapShot.hasError) {
                return Center(
                  child: Text(
                      "Something wrong with message: ${snapShot.error.toString()}"),
                );
              } else if (snapShot.connectionState == ConnectionState.done) {
                List<RestaurantModel> restaurant = snapShot.data;
                print("DATANEE : ${snapShot.data}");
                return buildListView(restaurant);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            })
            );
  }

  ListView buildListView(List<RestaurantModel> restaurants) {
    return ListView.builder(
      itemCount: restaurants.length,
      itemBuilder: (context, index) {
        RestaurantModel restaurantModel = restaurants[index];
        return MoreRestaurantContent(nameRestaurant: restaurantModel.name,);
      },
    );
  }
}
