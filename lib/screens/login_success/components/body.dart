import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/models/user_model.dart';
import 'package:shop_app/screens/add_product/add_product.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/size_config.dart';

// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(height: SizeConfig.screenHeight * 0.04),
//         Image.asset(
//           "assets/images/success.png",
//           height: SizeConfig.screenHeight * 0.4, //40%
//         ),
//         SizedBox(height: SizeConfig.screenHeight * 0.08),
//         Text(
//           "Login Success",
//           style: TextStyle(
//             fontSize: getProportionateScreenWidth(30),
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//         Spacer(),
//         SizedBox(
//           width: SizeConfig.screenWidth * 0.6,
//           child: DefaultButton(
//             text: "Back to home",
//             press: () {
//               Navigator.pushNamed(context, HomeScreen.routeName);
//             },
//           ),
//         ),
//         Spacer(),
//       ],
//     );
//   }
// }
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Back to home",
            press: () {
              if(loggedInUser.type=='seller'){
                Navigator.pushNamed(context, AddProduct.routeName);

              }else{
                Navigator.pushNamed(context, HomeScreen.routeName);
              }
              //Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}

