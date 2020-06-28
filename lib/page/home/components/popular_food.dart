import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class PopularFood extends StatelessWidget {
  const PopularFood({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      // padding: EdgeInsets.only(bottom: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, int index) {
          return Container(
            margin: EdgeInsets.only(left: 20, right: 10, top: 20, bottom: 40),
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
                      // margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 80.0),
                            child: Text(
                              "Mie Setan2",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          ),
                           SmoothStarRating(
                            size: 20.0,
                            borderColor: Colors.yellow,
                            color: Colors.yellow,
                            rating: 3.0,
                          ),
                        ],
                      ),
                    ),
                
                    
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
