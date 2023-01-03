import 'package:equatable/equatable.dart';
import 'package:mero_shop/models/product_model.dart';

class WishList extends Equatable {
  final List<Product> wishList;

  const WishList({this.wishList = const <Product>[]});
  @override
  List<Object?> get props => [wishList];
}
