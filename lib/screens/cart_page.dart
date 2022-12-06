import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/navbar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        title: 'Cart',
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
