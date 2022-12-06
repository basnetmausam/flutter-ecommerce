import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/navbar.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        title: 'Favorite',
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
