import 'Product.dart';
class Wishlist {
  final Product product;


  Wishlist({required this.product });

  get numOfItem => demoWishlist.length;
}
List<Wishlist> demoWishlist = [
  Wishlist(product: demoProducts[0]),
  Wishlist(product: demoProducts[2]),
  Wishlist(product: demoProducts[3]),
];
