import 'package:flutter/material.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class MoreCategoryBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 40.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Other Food Category",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 14,
                    physics: ClampingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: <Widget>[
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 60,
                              height: 60,
                              child: Icon(
                                Icons.fastfood,
                                size: 20,
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: primaryColor),
                            ),
                          ),
                          Text("Noodle")
                        ],
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
