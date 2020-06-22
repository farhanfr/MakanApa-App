import 'package:flutter/material.dart';
import 'package:makan_apa_app/page/home/components/more_category_bottomsheet.dart';
import 'package:makan_apa_app/widget/constanst.dart';

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
            Text("Noodle")
          ],
        ),
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
            Text("Noodle")
          ],
        ),
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
            Text("Noodle")
          ],
        ),
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
