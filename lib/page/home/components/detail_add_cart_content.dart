import 'package:flutter/material.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class DetailAddCartContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
      child: Column(
          children: <Widget>[
            Expanded(
                          child: ListView(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    // height: 100.0,
                    child: Image.asset(
                      "assets/img/bgtest.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Mie Jogja",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0)),
                      Text(
                        "12000",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                      
                      textAlign: TextAlign.justify,
                      
                      style: TextStyle(fontFamily: "Poppins", fontSize: 11)),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
             Align(
                alignment: Alignment.bottomCenter,
                child: ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width,
                  height: 50.0,
                  child: RaisedButton(
                      color: primaryColor,
                      child: Text(
                        "Add to cart",
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      onPressed: () => {}),
                ),
              ),
            
          ],
        ),
      
    );
  }
}
