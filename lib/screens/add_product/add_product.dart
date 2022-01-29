import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_bottom_nav_bar_seller.dart';
import 'package:shop_app/enums.dart';

import 'components/body.dart';

class AddProduct extends StatelessWidget {
  static String routeName = "/add_product";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBarSeller(selectedMenu: MenuState.home),
    );
  }
}
