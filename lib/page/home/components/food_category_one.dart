import 'package:flutter/material.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class FoodCategoryOne extends StatelessWidget {
  const FoodCategoryOne({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
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
            Text("Noodle")
          ],
        ),
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
            Text("Noodle")
          ],
        ),
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
            Text("Noodle")
          ],
        ),
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
            Text("Noodle")
          ],
        ),
         
          
      ],
    );
  }
}


