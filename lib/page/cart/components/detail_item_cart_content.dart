import 'package:flutter/material.dart';
import 'package:makan_apa_app/services/CartServices.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class DetailItemCartContent extends StatefulWidget {
  final int qty,idCart;

  const DetailItemCartContent({Key key, this.qty, this.idCart}) : super(key: key);
  @override
  _DetailItemCartContentState createState() => _DetailItemCartContentState();
}

class _DetailItemCartContentState extends State<DetailItemCartContent> {
  CartServices cartServices;
  int qtyCounter = 0;
  void addQty() {
    setState(() {
      qtyCounter++;
    });
  }

  void minQty() {
    setState(() {
      if (qtyCounter != 0) {
        qtyCounter--;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      qtyCounter = widget.qty;
    });
    cartServices = CartServices();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: addQty,
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.white,
                ),
                Text('$qtyCounter', style: TextStyle(fontSize: 60.0)),
                FloatingActionButton(
                  onPressed: minQty,
                  child: Icon(
                      const IconData(0xe15b, fontFamily: 'MaterialIcons'),
                      color: Colors.black),
                  backgroundColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
        ButtonTheme(
          minWidth: MediaQuery.of(context).size.width,
          height: 50.0,
          child: RaisedButton(
              color: primaryColor,
              child: Text(
                "Update Qty",
                style: TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins"),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              onPressed: () {
                cartServices.updateQty(qtyCounter,widget.idCart);
                Navigator.of(context).pop();
              }),
        ),
      ],
    );
  }
}
