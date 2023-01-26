import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

import '../bloc/wishlist/wishlist_bloc.dart';
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
      body: BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {
          if (state is WishlistLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is WishlistLoaded) {
            return GridView.builder(
              itemCount: state.wishlist.wishList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 2),
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: ProductCard(
                    width: width,
                    height: height,
                    product: state.wishlist.wishList[index],
                    widthFactor: 1.2,
                    isWishlist: true,
                  ),
                );
              },
            );
          } else {
            return const Text("Something went wrong.");
          }
        },
      ).pOnly(top: 16),
    );
  }
}
