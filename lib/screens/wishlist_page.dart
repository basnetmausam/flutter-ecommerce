import 'package:flutter/material.dart';
import 'package:mero_shop/models/product_model.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/widgets.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Favorite',
      ),
      bottomNavigationBar: const NavBar(),
      body: GridView.builder(
        itemCount: Product.products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, childAspectRatio: 2),
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: ProductCard(
              width: width,
              height: height,
              product: Product.products[index],
              widthFactor: 1.2,
              isWishlist: true,
            ),
          );
        },
      ).pOnly(top: 16),
    );
  }
}
