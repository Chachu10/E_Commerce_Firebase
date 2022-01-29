import 'package:flutter/material.dart';

import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/add_product/components/add_product_form.dart';
import 'package:shop_app/size_config.dart';





class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.03),
            Text("Add Your Product", style: headingStyle),
            Text(
              "Enter the product details  \nand add images",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.06),
            AddProductForm(),
            SizedBox(height: getProportionateScreenHeight(30)),

          ],


        ),
      ),
    );
  }
}
