import 'dart:ui';

import 'package:flutter/material.dart';

import 'components/body.dart';

class SignUpSellerScreen extends StatelessWidget {
  static String routeName = "/sign_up_seller";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up as Seller",style: TextStyle(color: Colors.black),),
      ),
      body: Body(),
    );
  }
}
