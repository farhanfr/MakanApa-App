import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makan_apa_app/page/home/components/detail_restaurant.dart';
import 'package:makan_apa_app/page/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DetailRestaurant(),
    );
  }
}

