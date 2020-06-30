import 'package:flutter/material.dart';
import 'package:makan_apa_app/services/CartServices.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class OrderNow extends StatefulWidget {
  @override
  _OrderNowState createState() => _OrderNowState();
}

class _OrderNowState extends State<OrderNow> {
CartServices cartServices;

  @override
  void initState() {
    super.initState();
    cartServices = CartServices();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
            future: cartServices.getTotalCart(),
            builder: (context,snapshot){
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                      "Something wrong with message: ${snapshot.error.toString()}"),
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                int  cartTotalItems = snapshot.data;
                print("DATANEE : ${snapshot.data}");
                return buildContainer(context,cartTotalItems);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }
          );
    
  }

  Container buildContainer(BuildContext context, int cartTotalItems) {
    return Container(
      color: whiteColor,
      // padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 25.0,right: 25.0,top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Total",style: TextStyle(fontSize: 18.0)),
                Text("Rp.$cartTotalItems",style: TextStyle(fontSize: 18.0,fontFamily: "Poppins",fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                height: 50.0,
                child: RaisedButton(
                    color: primaryColor,
                    child: Text(
                      "Order Now",
                      style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold,fontFamily: "Poppins"),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    onPressed: () {
                      
                    }),
              ),
          ),
        ],
      ),
    );
  }
}