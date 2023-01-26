import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

import '../bloc/cart/cart_bloc.dart';
import '../models/product_model.dart';

class CartProductCard extends StatelessWidget {
  final Product product;
  final int quantity;

  const CartProductCard(
      {super.key, required this.product, required this.quantity});

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
        BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            return Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.read<CartBloc>().add(CartProductRemoved(product));
                  },
                  icon: const Icon(Icons.remove_circle_outline),
                  color: Colors.black,
                  iconSize: 20,
                ),
                Text(
                  "$quantity",
                  style: context.textTheme.bodyLarge
                      ?.copyWith(color: Colors.black),
                ),
                IconButton(
                  onPressed: () {
                    context.read<CartBloc>().add(CartProductAdded(product));
                  },
                  icon: const Icon(Icons.add_circle_outline),
                  color: Colors.black,
                  iconSize: 20,
                ),
              ],
            );
          },
        )
      ],
    ).py20();
  }
}
