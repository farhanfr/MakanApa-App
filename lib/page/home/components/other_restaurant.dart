import 'package:flutter/material.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class OtherRestaurant extends StatefulWidget {
  @override
  _OtherRestaurantState createState() => _OtherRestaurantState();
}

class _OtherRestaurantState extends State<OtherRestaurant> {
  var itemCount = 10;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height:MediaQueryData.fromWindow(context).size.height;
      // height:MediaQuery.of(context).size.height,
      child: ListView.builder(
          itemCount: itemCount,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
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
                              Text("Pak Anon Place - sawojajar",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontFamily: "Poppins",fontSize: 18,fontWeight: FontWeight.bold)),
                              // Text("Pak Anon Place - sawojajar",style: TextStyle(color: textLightColor),),
                              // Text("oeee asas"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  index == 4
                      ? Visibility(
                          child: Divider(),
                          visible: false,
                        )
                      : Divider()
                ],
              ),
            );
          }),
    );
  }
}