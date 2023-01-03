import 'package:equatable/equatable.dart';
import 'models.dart';

class WishList extends Equatable {
  final List<Product> wishList;

  const WishList({this.wishList = const <Product>[]});
  @override
  List<Object?> get props => [wishList];
}
