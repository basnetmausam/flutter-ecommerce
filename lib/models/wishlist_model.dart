import 'package:equatable/equatable.dart';
import 'package:mero_shop/models/product_model.dart';

class WishList extends Equatable {
  List<Product> wishList = [];

  WishList({this.wishList = const <Product>[]});
  @override
  List<Object?> get props => [wishList];
}
