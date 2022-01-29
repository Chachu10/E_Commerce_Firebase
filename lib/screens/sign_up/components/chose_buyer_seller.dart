import 'package:flutter/material.dart';
//import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/sign_up_seller/sign_up_seller_screen.dart';
import 'package:shop_app/screens/sing_up_buyer/sign_up_buyer_screen.dart';
//import 'package:shop_app/components/form_error.dart';
//import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
//import 'package:shop_app/screens/sign_up/sign_up_screen.dart';
//import 'package:shop_app/screens/sign_up_seller/sign_up_seller_screen.dart';

//import '../../../constants.dart';
import '../../../size_config.dart';


class ChooseBuyerSeller extends StatefulWidget {
  const ChooseBuyerSeller({Key? key}) : super(key: key);

  @override
  _ChooseBuyerSellerState createState() => _ChooseBuyerSellerState();
}

class _ChooseBuyerSellerState extends State<ChooseBuyerSeller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.03),
              DefaultButton(
                text: "Register as Seller ",
                press: () {
                  Navigator.pushNamed(context, SignUpSellerScreen.routeName);
                },
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              DefaultButton(
                text: "Register as Buyer ",
                press: () {
                  Navigator.pushNamed(context, SignUpBuyerScreen.routeName);
                },
              ),

            ],
          ),
        )
    );
  }
}
