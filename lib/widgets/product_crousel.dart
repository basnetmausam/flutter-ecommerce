import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/models.dart';
import 'widgets.dart';

class ProductCrousel extends StatelessWidget {
  const ProductCrousel({
    Key? key,
    required this.height,
    required this.width,
    required this.product,
  }) : super(key: key);
  final List<Product> product;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height / 5.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: product.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductCard(
            width: width,
            height: height,
            product: Product.products[index],
          ).px4();
        },
      ).px4().py4(),
    );
  }
}
