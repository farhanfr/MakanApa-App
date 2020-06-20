import 'package:flutter/material.dart';
import 'package:makan_apa_app/page/authentication/otp/components/otp_components.dart';
import 'package:makan_apa_app/widget/constanst.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: OtpComponents(),
    );
  }
}