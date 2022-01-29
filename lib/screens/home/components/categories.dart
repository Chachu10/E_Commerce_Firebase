//special_offers is being used for category display



// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// import '../../../size_config.dart';
//
// class Categories extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     List<Map<String, dynamic>> categories = [
//       {"icon": "assets/icons/clothes-hanger.svg", "text": "Fashion"},
//       {"icon": "assets/icons/groceries.svg", "text": "Groceries"},
//       {"icon": "assets/icons/Game Icon.svg", "text": "Sports"},
//       {"icon": "assets/icons/Gift Icon.svg", "text": "Books"},
//       {"icon": "assets/icons/Discover.svg", "text": "Electronics"},
//     ];
//     return Padding(
//       padding: EdgeInsets.all(getProportionateScreenWidth(10)),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: List.generate(
//           categories.length,
//           (index) => CategoryCard(
//             icon: categories[index]["icon"],
//             text: categories[index]["text"],
//             press: () {},
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class CategoryCard extends StatelessWidget {
//   const CategoryCard({
//     Key? key,
//     required this.icon,
//     required this.text,
//     required this.press,
//   }) : super(key: key);
//
//   final String? icon, text;
//   final GestureTapCallback press;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: press,
//       child: SizedBox(
//         width: getProportionateScreenWidth(55),
//         child: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.all(getProportionateScreenWidth(15)),
//               height: getProportionateScreenWidth(55),
//               width: getProportionateScreenWidth(55),
//               decoration: BoxDecoration(
//                 color: Color(0xFFFFECDF),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: SvgPicture.asset(icon!),
//             ),
//             SizedBox(height: 5),
//             Text(text!, textAlign: TextAlign.center)
//           ],
//         ),
//       ),
//     );
//   }
// }
