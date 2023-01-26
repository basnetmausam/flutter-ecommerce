import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mero_shop/models/models.dart';
import 'package:velocity_x/velocity_x.dart';

import '../bloc/cart/cart_bloc.dart';
import '../widgets/widgets.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Cart',
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.grey)),
                    onPressed: () {},
                    child: const Text(
                      "Go To Checkout",
                      style: TextStyle(fontSize: 15),
                    )),
              ],
            )),
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state is CartLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is CartLoaded) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 10,
                ),
                // Top Column
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          " ${state.cart.freeDeliveryString}",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: const RoundedRectangleBorder(),
                            elevation: 0,
                          ),
                          child: Text(
                            'Add More Items',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 460,
                      child: ListView.builder(
                        itemCount: state.cart
                            .productQuantity(state.cart.cartProducts)
                            .keys
                            .length,
                        itemBuilder: (context, index) {
                          return CartProductCard(
                            quantity: state.cart
                                .productQuantity(state.cart.cartProducts)
                                .values
                                .elementAt(index),
                            product: state.cart
                                .productQuantity(state.cart.cartProducts)
                                .keys
                                .elementAt(index),
                          );
                        },
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                    )
                  ],
                ).px20().py12(),

                // Bottom Column
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Subtotal:",
                          style: context.textTheme.bodyText2!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Rs. ${state.cart.subtotalString}",
                          style: context.textTheme.bodyText2!
                              .copyWith(fontWeight: FontWeight.bold),
                        )
                      ],
                    ).px32().py12(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Delivery Fee:",
                          style: context.textTheme.bodyText2!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Rs.  ${state.cart.deliveryFeeString}",
                          style: context.textTheme.bodyText2!
                              .copyWith(fontWeight: FontWeight.bold),
                        )
                      ],
                    ).pOnly(left: 42, right: 42).py12(),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          height: 60,
                          color: Colors.grey,
                        ).pOnly(left: 50, right: 50),
                        Container(
                          height: 50,
                          color: Colors.black,
                        ).px64(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Total:",
                              style: context.textTheme.bodyText2!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "Rs. ${state.cart.totalString}",
                              style: context.textTheme.bodyText2!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ).py12()
                  ],
                )
              ],
            );
          } else {
            return const Text("Something went wrong.");
          }
        },
      ),
    );
  }
}
