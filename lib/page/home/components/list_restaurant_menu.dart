import 'package:flutter/material.dart';
import 'package:makan_apa_app/model/FoodModel.dart';
import 'package:makan_apa_app/model/MenuRestaurantModel.dart';
import 'package:makan_apa_app/page/home/components/detail_add_cart.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class ListRestaurantMenu extends StatefulWidget {
  final int menuTotal;
  final List<MenuRestaurantModel> menuRestaurants;
  final List<FoodModel> foodRestaurant;

  const ListRestaurantMenu({Key key, this.menuTotal, this.menuRestaurants, this.foodRestaurant})
      : super(key: key);
  @override
  _ListRestaurantMenuState createState() => _ListRestaurantMenuState();
}

class _ListRestaurantMenuState extends State<ListRestaurantMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: widget.menuRestaurants.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            MenuRestaurantModel menuRestaurantModel =
                widget.menuRestaurants[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
               
                Container(
                  color: whiteColor,
                                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 10.0,right: 10.0),
                    child: Text(
                      menuRestaurantModel.name,
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 20.0,
                          color: textColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        for (var item in widget.foodRestaurant)
                        if (item.menuId == menuRestaurantModel.id)
                       
                        Container(
                          height: 120,
                          margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      height: 100.0,
                                      // color: primaryColor,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.asset(
                                            "assets/img/bgtest.png",
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: Container(
                                      // color: Colors.red,
                                      margin:
                                          EdgeInsets.only(left: 10, right: 10),
                                      width: MediaQuery.of(context).size.width,
                                      // height: 100.0,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(item.name,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold)),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 5.0),
                                            child: Text(
                                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                                maxLines: 2,
                                                // textAlign: TextAlign.justify,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontSize: 11)),
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              InkWell(
                                                  onTap: () {
                                                    DetailAddCart
                                                        .detailAddCartMethod(
                                                            context);
                                                  },
                                                  child: Text(
                                                      "Click Here to add",
                                                      style: TextStyle(
                                                          color:
                                                              primaryColor))),
                                              Text(
                                                item.price.toString(),
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // item.menuId != menuRestaurantModel.id
                              //     ? Visibility(
                              //         child: Divider(),
                              //         visible: false,
                              //       )
                              //     : Divider()
                              //  Divider()
                            ],
                          ),
                          
                        ),
                      ],
                    )),
              ],
            );
          }),
    );
  }
}
