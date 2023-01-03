import 'package:equatable/equatable.dart';
import 'models.dart';

class Cart extends Equatable {
  final List<Product> cartProducts;

  const Cart({this.cartProducts = const <Product>[]});

  double get subtotal =>
      cartProducts.fold(0, (total, current) => total + current.price);

  String get subtotalString => subtotal.toStringAsFixed(2);

  double deliveryFee(subtotal) {
    if (subtotal >= 1000 || subtotal == 0) {
      return 0.0;
    } else {
      return 100;
    }
  }

  String freeDelivery(subtotal) {
    if (subtotal >= 1000) {
      return 'You have Free Delivery';
    } else {
      double missing = 1000.0 - subtotal;
      return 'Add Rs.${missing.toString()} for FREE Delivery';
    }
  }

  double total(subtotal, deliveryFee) {
    return subtotal + deliveryFee(subtotal);
  }

  String get deliveryFeeString => deliveryFee(subtotal).toStringAsFixed(2);

  String get totalString => total(subtotal, deliveryFee).toStringAsFixed(2);

  String get freeDeliveryString => freeDelivery(subtotal);

  @override
  List<Object?> get props => [cartProducts];
}
