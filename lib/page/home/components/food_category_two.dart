import 'package:flutter/material.dart';

class FoodCategoryTwo extends StatelessWidget {
  const FoodCategoryTwo({
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
                      color: Color(0xFFe0f2f1)),
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
                      color: Color(0xFFe0f2f1)),
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
                      color: Color(0xFFe0f2f1)),
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
                      color: Color(0xFFe0f2f1)),
                ),
            ),
            Text("Noodle")
          ],
        ),
          
      ],
    );
  }
}

