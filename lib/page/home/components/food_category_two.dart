import 'package:flutter/material.dart';
import 'package:makan_apa_app/model/FoodCategoryModel.dart';
import 'package:makan_apa_app/page/home/components/more_category_bottomsheet.dart';
import 'package:makan_apa_app/services/FoodCategoryMenuServices.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class FoodCategoryTwo extends StatefulWidget {
  const FoodCategoryTwo({
    Key key,
  }) : super(key: key);

  @override
  _FoodCategoryTwoState createState() => _FoodCategoryTwoState();
}

class _FoodCategoryTwoState extends State<FoodCategoryTwo> {
FoodCategoryMenuServices foodCategoryMenuServices;
List<String> test = ['1','2','3','4'];

@override
  void initState() {
    super.initState();
    foodCategoryMenuServices=FoodCategoryMenuServices();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
            future: foodCategoryMenuServices.getAllMenuSecond(),
            builder: (context, snapShot) {
              if (snapShot.hasError) {
                return Center(
                  child: Text(
                      "Something wrong with message: ${snapShot.error.toString()}"),
                );
              } else if (snapShot.connectionState == ConnectionState.done) {
                List<FoodCategoryModel> foodCategory = snapShot.data;
                print("DATANEE : ${snapShot.data}");
                return  buildRow(foodCategory);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }); 
    
  }

  Row buildRow(List<FoodCategoryModel> foodCategory) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      for (var item in foodCategory)
      item.id != 8 ?
      Column(
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Container(
              width: 60,
              height: 60,
              child: Icon(
                Icons.fastfood,
                size: 20,
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
            ),
          ),
          Text(item.name)
        ],
      )
      :
      Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              _settingModalBottomSheet(context);
            },
            child: Container(
              width: 60,
              height: 60,
              child: Icon(
                Icons.format_list_bulleted,
                size: 20,
              ),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: whiteColor),
            ),
          ),
          Text("Other")
        ],
      ),
    ],
  );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
      backgroundColor: whiteColor,
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))
        ),
        builder: (BuildContext bc) {
          return Container(
            child: MoreCategoryBottomSheet()
          );
        });
  }
}
