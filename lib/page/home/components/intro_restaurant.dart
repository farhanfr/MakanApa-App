import 'package:flutter/material.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class IntroRestaurant extends StatelessWidget {
  final String nameRestaurant;

  const IntroRestaurant({Key key, this.nameRestaurant}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: whiteColor,
      width: MediaQuery.of(context).size.width,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(alignment: Alignment.topLeft,
          child: Text(nameRestaurant,style: TextStyle(
            fontSize: 20.0,fontFamily: "Poppins"  
          ),)),
        ],
      ),
    );
  }
}