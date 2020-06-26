import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makan_apa_app/model/RestaurantModel.dart';
import 'package:makan_apa_app/page/home/components/detail_restaurant.dart';
import 'package:makan_apa_app/services/RestaurantServices.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class OtherRestaurant extends StatefulWidget {
  @override
  _OtherRestaurantState createState() => _OtherRestaurantState();
}

class _OtherRestaurantState extends State<OtherRestaurant> {
  RestaurantServices restaurantServices;
  var itemCount = 10;

  @override
  void initState() {
    super.initState();
    restaurantServices = RestaurantServices();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // height:MediaQueryData.fromWindow(context).size.height;
        // height:MediaQuery.of(context).size.height,
        child: FutureBuilder(
            future: restaurantServices.getAllRestaurant(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                      "Something wrong with message: ${snapshot.error.toString()}"),
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                List<RestaurantModel> restaurant = snapshot.data;
                // print("DATANEE : ${snapshot.data}");
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
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          RestaurantModel restaurantModel = restaurants[index];
          return GestureDetector(
            onTap: () {
              Get.to(DetailRestaurant());
            },
            child: Container(
              color: whiteColor,
              height: 120,
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          color: primaryColor,
                          child: Image.asset("assets/img/bgtest.png",
                              fit: BoxFit.cover),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 100.0,
                          height: 100.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(restaurantModel.name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              // Text("Pak Anon Place - sawojajar",style: TextStyle(color: textLightColor),),
                              // Text("oeee asas"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  index == restaurants.length - 1
                      ? Visibility(
                          child: Divider(),
                          visible: false,
                        )
                      : Divider()
                ],
              ),
            ),
          );
        });
  }
}
