import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

import '../bloc/cart/cart_bloc.dart';
import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.width,
    required this.height,
    required this.product,
    required this.widthFactor,
    required this.isWishlist,
  }) : super(key: key);
  final Product product;
  final double width;
  final double height;
  final double widthFactor;
  final bool isWishlist;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, "/product", arguments: product),
      child: Stack(
        children: [
          SizedBox(
            width: width / widthFactor,
            height: height / 5.5,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 5,
            child: Container(
              color: Colors.black.withAlpha(50),
              height: height / 20,
              width: isWishlist ? (width / 2) : width / 2.5,
            ),
          ),
          Positioned(
            bottom: 5,
            left: 5,
            child: Container(
              color: Colors.black,
              height: height / 20,
              width: isWishlist ? (width / 2) - 10 : (width / 2.5) - 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: context.textTheme.bodyText2
                            ?.copyWith(color: Colors.white),
                      ).pOnly(left: 5),
                      Text(
                        " Rs ${product.price.toString()}",
                        style: context.textTheme.bodyText2?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ).pOnly(left: 5),
                    ],
                  ),
                  BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      if (state is CartLoading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (state is CartLoaded) {
                        return IconButton(
                          icon: const Icon(
                            Icons.add_circle_rounded,
                            size: 20,
                          ),
                          onPressed: () {
                            context
                                .read<CartBloc>()
                                .add(CartProductAdded(product));
                          },
                        );
                      } else {
                        return const Center(
                          child: Text("Something went wrong!"),
                        );
                      }
                    },
                  ),
                  isWishlist
                      ? const Icon(
                          Icons.delete,
                          size: 21,
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
