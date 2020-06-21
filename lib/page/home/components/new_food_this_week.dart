import 'package:flutter/material.dart';
import 'package:makan_apa_app/widget/constanst.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class NewFoodThisWeek extends StatefulWidget {
  const NewFoodThisWeek({
    Key key,
  }) : super(key: key);

  @override
  _NewFoodThisWeekState createState() => _NewFoodThisWeekState();
}

class _NewFoodThisWeekState extends State<NewFoodThisWeek> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 6,
            physics: ClampingScrollPhysics(),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 100 / 90
                ),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin:
                    EdgeInsets.all(10.0),
                    height: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 20,
                        color: Color(0xFFB0CCE1).withOpacity(0.32),
                      ),
                    ]),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    // onTap: press,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 15),
                          child: Image.asset("assets/img/bgtest.png",
                              fit: BoxFit.cover),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Mie Setan2",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
