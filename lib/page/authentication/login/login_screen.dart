import 'package:flutter/material.dart';
import 'package:makan_apa_app/page/authentication/login/components/LoginComponent.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: LoginComponent(),
    );
  }
}

