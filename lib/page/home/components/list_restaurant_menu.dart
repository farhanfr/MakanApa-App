import 'package:flutter/material.dart';
import 'package:makan_apa_app/page/home/components/detail_add_cart.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class ListRestaurantMenu extends StatefulWidget {
  @override
  _ListRestaurantMenuState createState() => _ListRestaurantMenuState();
}

class _ListRestaurantMenuState extends State<ListRestaurantMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 4,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                Container(
                  color: whiteColor,
                  margin: EdgeInsets.only(bottom: 10.0),
                  child: ListView.separated(
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context2, int index2) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          index2 == 0
                              ? Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, left: 10.0),
                                  child: Text(
                                    "Paket Murah",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 20.0,
                                        color: textColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ) //JUDUL
                              : Container(
                                  height: 120,
                                  margin: EdgeInsets.only(
                                      left: 10, right: 10, top: 10),
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
                                                borderRadius:
                                                    BorderRadius.circular(5),
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
                                              margin: EdgeInsets.only(
                                                  left: 10, right: 10),
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              // height: 100.0,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text("Waroeng Pak Somad",
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          fontFamily: "Poppins",
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 5.0),
                                                    child: Text(
                                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                                        maxLines: 2,
                                                        // textAlign: TextAlign.justify,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Poppins",
                                                            fontSize: 11)),
                                                  ),
                                                  SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      InkWell(
                                                        onTap: (){
                                                          DetailAddCart.detailAddCartMethod(context);
                                                        },
                                                        child: Text("Click Here to add",style: TextStyle(color: primaryColor)
                                                        )),
                                                      Text("12000",style: TextStyle(fontWeight: FontWeight.bold),)
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      // index == 9
                                      //     ? Visibility(
                                      //         child: Divider(),
                                      //         visible: false,
                                      //       )
                                      //     : Divider()
                                    ],
                                  ),
                                )
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context3, int index3) {
                      return index3 == 0
                          ? Visibility(child: Divider(), visible: false)
                          : Divider();
                    },
                  ),
                ),
              ],
            );
          }),
    );
  }
}
