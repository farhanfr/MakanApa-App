import 'package:flutter/material.dart';

AppBar currentAppBar(String title,Color color) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0.0,
      title: Text(title,style: TextStyle(color: color),)
    );
  }
