import 'package:flutter/material.dart';

import 'components/body.dart';

class PaymentsPage extends StatelessWidget {
  static String routeName = "/payments_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Order Status",style: TextStyle(color: Colors.black)),
      ),
      body: Body(),
    );
  }
}
