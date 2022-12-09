import 'package:flutter/material.dart';
import 'package:mero_shop/models/category_model.dart';
import 'package:mero_shop/widgets/appbar.dart';
import 'package:mero_shop/widgets/product_card.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/product_model.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final List<Product> categoryProducts = Product.products
        .where((element) => element.category == category.name)
        .toList();
    return Scaffold(
      appBar: CustomAppbar(title: category.name),
      body: GridView.builder(
        itemCount: categoryProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.15),
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: ProductCard(
              width: width,
              height: height,
              product: categoryProducts[index],
              widthFactor: 2.2,
              isWishlist: false,
            ),
          );
        },
      ).pOnly(top: 16),
    );
  }
}
