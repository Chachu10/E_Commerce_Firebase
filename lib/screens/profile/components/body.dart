import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/models/user_model.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';
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
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(8),
            child: Text('${loggedInUser.name}\n${loggedInUser.phoneNumber}\n${loggedInUser.email}'),
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}


// class Body extends StatelessWidget{
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return SingleChildScrollView(
//       padding: EdgeInsets.symmetric(vertical: 20),
//       child: Column(
//         children: [
//           ProfilePic(),
//           SizedBox(height: 20),
//           Container(
//             padding: EdgeInsets.all(8),
//             child: Text('Account info here'),
//           ),
//           // ProfileMenu(
//           //   text: "My Account",
//           //   icon: "assets/icons/User Icon.svg",
//           //   press: () => {},
//           // ),
//           // ProfileMenu(
//           //   text: "Notifications",
//           //   icon: "assets/icons/Bell.svg",
//           //   press: () {},
//           // ),
//           // ProfileMenu(
//           //   text: "Settings",
//           //   icon: "assets/icons/Settings.svg",
//           //   press: () {},
//           // ),
//           // ProfileMenu(
//           //   text: "Help Center",
//           //   icon: "assets/icons/Question mark.svg",
//           //   press: () {},
//           // ),
//           ProfileMenu(
//             text: "Log Out",
//             icon: "assets/icons/Log out.svg",
//             press: () {
//               Navigator.pushNamed(context, SplashScreen.routeName);
//             },
//           ),
//         ],
//       ),
//     );
//   }
//   }

