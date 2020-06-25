import 'package:flutter/material.dart';
import 'package:makan_apa_app/model/FoodCategoryModel.dart';
import 'package:makan_apa_app/model/RestaurantModel.dart';
import 'package:makan_apa_app/services/FoodCategoryMenuServices.dart';
import 'package:makan_apa_app/services/RestaurantServices.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class FoodCategoryOne extends StatefulWidget {
  // const FoodCategoryOne({
  //   Key key,
  // }) : super(key: key);

  @override
  _FoodCategoryOneState createState() => _FoodCategoryOneState();
}

class _FoodCategoryOneState extends State<FoodCategoryOne> {
  List<String> a = ['1','2','3','r'];
  FoodCategoryMenuServices foodCategoryMenuServices;
  @override
  void initState() {
    super.initState();
    foodCategoryMenuServices = FoodCategoryMenuServices();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
            future: foodCategoryMenuServices.getAllMenuFirst(),
            builder: (context, snapShot) {
              if (snapShot.hasError) {
                return Center(
                  child: Text(
                      "Something wrong with message: ${snapShot.error.toString()}"),
                );
              } else if (snapShot.connectionState == ConnectionState.done) {
                List<FoodCategoryModel> restaurant = snapShot.data;
                print("DATANEE : ${snapShot.data}");
                return  buildRow(restaurant);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            });
  }

  Row buildRow(List<FoodCategoryModel> restaurant) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[   
      for (var item in restaurant)
      Column(
        children: <Widget>[
          InkWell(
            onTap: (){},
                    child: Container(
                width: 60,
                height: 60,
                child: Icon(Icons.fastfood, size: 20,),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor),
              ),
          ),
          Text(item.name) 
        ],
      ),
      // Column(
      //   children: <Widget>[
      //     InkWell(
      //       onTap: (){},
      //               child: Container(
      //           width: 60,
      //           height: 60,
      //           child: Icon(Icons.fastfood, size: 20,),
      //           decoration: BoxDecoration(
      //               shape: BoxShape.circle,
      //               color: whiteColor),
      //         ),
      //     ),
      //     Text("Noodle")
      //   ],
      // ),
      // Column(
      //   children: <Widget>[
      //     InkWell(
      //       onTap: (){},
      //               child: Container(
      //           width: 60,
      //           height: 60,
      //           child: Icon(Icons.fastfood, size: 20,),
      //           decoration: BoxDecoration(
      //               shape: BoxShape.circle,
      //               color: whiteColor),
      //         ),
      //     ),
      //     Text("Noodle")
      //   ],
      // ),
      // Column(
      //   children: <Widget>[
      //     InkWell(
      //       onTap: (){},
      //               child: Container(
      //           width: 60,
      //           height: 60,
      //           child: Icon(Icons.fastfood, size: 20,),
      //           decoration: BoxDecoration(
      //               shape: BoxShape.circle,
      //               color: whiteColor),
      //         ),
      //     ),
      //     Text("Noodle")
      //   ],
      // ),
       
        
    ],
  );
  }
}


