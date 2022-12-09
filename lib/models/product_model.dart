import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name, category, imageUrl, description;
  final bool isRecommended, isPopular;
  final double price;

  const Product(this.name, this.category, this.imageUrl, this.description,
      this.isRecommended, this.isPopular, this.price);

  @override
  List<Object?> get props =>
      [name, category, imageUrl, description, isPopular, isRecommended, price];

  static List<Product> products = [
    const Product(
        "Casual Shoes 1",
        "Casual Shoes",
        "https://images.unsplash.com/photo-1608231387042-66d1773070a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
        "this is a very good shoe ok",
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
        false,
        false,
        100.00),
    const Product(
        "Casual Shoes 2",
        "Casual Shoes",
        "https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=998&q=80",
        "This is also a very good one and last longer than your boyfriend ",
        false,
        true,
        130.00),
  ];
}
