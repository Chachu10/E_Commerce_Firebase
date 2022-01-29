import 'package:flutter/material.dart';
import 'package:shop_app/models/wishlist.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Wishlist cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: TextStyle(color: Colors.black, fontSize: 16),
              maxLines: 2,
            ),
            SizedBox(height: 5),
            Text.rich(
              TextSpan(
                text: "\$${cart.product.price}",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: kPrimaryColor),
                // children: [
                //   TextSpan(
                //       text: " x${cart.numOfItem}",
                //       style: Theme.of(context).textTheme.bodyText1),
                // ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.25,
              height: 35,
              child: TextButton(style: TextButton.styleFrom(
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                primary: Colors.white,
                backgroundColor: kPrimaryColor,
              ),
                child: Text('Add to cart',
                  style: TextStyle(
                    fontSize: 10,
                      color: Colors.white
                  ),
                ),

                onPressed: () => null,
              )
            ),




          ],
        )
      ],
    );
  }
}
