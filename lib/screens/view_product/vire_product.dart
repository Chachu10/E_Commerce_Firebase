import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_bottom_nav_bar_seller.dart';
import 'package:shop_app/enums.dart';

import 'components/body.dart';

class View_Product extends StatelessWidget {
  static String routeName = "/view_product";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Products',style: TextStyle(color: Colors.black)),),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBarSeller(selectedMenu: MenuState.favourite),
    );
  }
}
