import 'package:equatable/equatable.dart';

import 'models.dart';

class Cart extends Equatable {
  Cart();

  double get subtotal =>
      products.fold(0, (total, current) => total + current.price);

  String get subtotalString => subtotal.toStringAsFixed(2);

  double deliveryFee(subtotal) {
    if (subtotal >= 1000) {
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
      return 'Add \$${missing.toStringAsFixed(2)} for FREE Delivery';
    }
  }

  double total(subtotal, deliveryFee) {
    return subtotal + deliveryFee(subtotal);
  }

  String get deliveryFeeString => deliveryFee(subtotal).toStringAsFixed(2);

  String get totalString => total(subtotal, deliveryFee).toStringAsFixed(2);

  String get freeDeliveryString => freeDelivery(subtotal);

  List<Product> products = [
    const Product(
        "Casual Shoes 1",
        "Casual Shoes",
        "https://images.unsplash.com/photo-1608231387042-66d1773070a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
        "this is a very good shoe okthis is a very good shoe okthis is a very good shoe okthis is a very good shoe okthis is a very good shoe okthis is a very good shoe ok",
        true,
        false,
        100.00),
    const Product(
        "Casual Shoes 2",
        "Casual Shoes",
        "https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=998&q=80",
        "This is also a very good one and last longer than your boyfriend ",
        true,
        false,
        130.00),
    const Product(
        "Casual Shoes 1",
        "Casual Shoes",
        "https://images.unsplash.com/photo-1608231387042-66d1773070a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
        "this is a very good shoe ok",
        true,
        true,
        100.00),
  ];

  @override
  List<Object?> get props => [];
}
