import 'package:flutter/material.dart';
import 'package:makan_apa_app/model/CartModel.dart';
import 'package:makan_apa_app/services/CartServices.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class ListCartItem extends StatefulWidget {
  @override
  _ListCartItemState createState() => _ListCartItemState();
}

class _ListCartItemState extends State<ListCartItem> {
  CartServices cartServices;

  @override
  void initState() {
    super.initState();
    cartServices = CartServices();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: whiteColor,
          padding: EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width,
          // height: 200,
          child: FutureBuilder(
            future: cartServices.getCartItems(),
            builder: (context,snapshot){
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                      "Something wrong with message: ${snapshot.error.toString()}"),
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                List<CartModel> cartItems = snapshot.data;
                print("DATANEE : ${snapshot.data}");
                return buildListView(cartItems);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }
          )
          
        ),

      ],
    );
  }

  ListView buildListView(List<CartModel> cartItems) {
    return ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: cartItems.length,
            itemBuilder: (context, index) {
              return Container(
                color: whiteColor,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            margin: EdgeInsets.symmetric(vertical: 5.0),
                            // width: 50.0,
                            height: 100,
                            // color: primaryColor,
                            child: Image.asset("assets/img/bgtest.png",
                                fit: BoxFit.cover),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            // width: 100.0,
                            // height: MediaQuery.of(context).size.height,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                               Text(cartItems[index].food.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontFamily: "Poppins", fontSize: 16,fontWeight: FontWeight.bold)),
                            
                                // Text("Pak Anon Place - sawojajar",style: TextStyle(color: textLightColor),),
                                // Text("oeee asas"),
                                Text("x${cartItems[index].qty}"),
                                SizedBox(height: 20.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    InkWell(
                                        onTap: () {},
                                        child: Text("Edit & Detail",
                                            style:
                                                TextStyle(color: primaryColor))),
                                    Text(
                                      cartItems[index].price.toString(),
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Divider()
                    // index == restaurants.length - 1
                    //     ? Visibility(
                    //         child: Divider(),
                    //         visible: false,
                    //       )
                    //     : Divider()
                  ],
                ),
              );
            });
  }
}
