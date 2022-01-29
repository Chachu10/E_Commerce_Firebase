



import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/screens/payments_page/payments_page.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';

import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/sing_up_buyer/sign_up_buyer_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/screens/sign_up/sign_up_screen.dart';
import 'package:shop_app/screens/sign_up_seller/sign_up_seller_screen.dart';
import 'package:shop_app/screens/wishlist/wishlist.dart';
import 'package:shop_app/screens/add_product/add_product.dart';
import 'package:shop_app/screens/view_product/vire_product.dart';
import 'package:shop_app/screens/add_image/add_image.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  //CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => HomeScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  SignUpBuyerScreen.routeName: (context) => SignUpBuyerScreen(),
  SignUpSellerScreen.routeName: (context) => SignUpSellerScreen(),
  WishlistScreen.routeName: (context) => WishlistScreen(),
  AddProduct.routeName: (context) => AddProduct(),
  View_Product.routeName: (context) => View_Product(),
  AddImage.routeName: (context) => AddImage(),
  PaymentsPage.routeName: (context) => PaymentsPage(),


};
