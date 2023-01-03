import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/product_model.dart';

class CartProductCard extends StatelessWidget {
  final Product product;

  const CartProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.network(
          product.imageUrl,
          width: 100,
          height: 80,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Text(
              product.name,
              style: context.bodyMedium,
            ),
            Text(
              product.price.toString(),
              style: context.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.remove_circle_outline),
              color: Colors.black,
              iconSize: 20,
            ),
            const Text("1"),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_circle_outline),
              color: Colors.black,
              iconSize: 20,
            ),
          ],
        )
      ],
    ).py20();
  }
}
