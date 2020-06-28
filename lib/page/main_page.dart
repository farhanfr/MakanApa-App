import 'package:flutter/material.dart';
import 'package:makan_apa_app/page/account/account_screen.dart';
import 'package:makan_apa_app/page/home/components/main_app_bar.dart';
import 'package:makan_apa_app/page/home/home_screen.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _currentIndex = 0;

  final tabs = [
   HomeScreen(),
    Center(child: Text("a")),
    Center(child: Text("a")),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: mainAppBar(),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(        
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("home"),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            title: Text("History"),
            backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Cart"),
            backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_circle),
            title: Text("Profile"),
            backgroundColor: Colors.yellow
          )
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}