import 'package:flutter/material.dart';
import 'package:mero_shop/screens/home_screen.dart';
import 'package:mero_shop/screens/profile_page.dart';
import 'package:mero_shop/screens/wishlist_page.dart';

import '../models/models.dart';
import '../screens/cart_page.dart';
import '../screens/catalog_page.dart';
import '../screens/product_page.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    // print('This is route:${settings.name}');

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MyHomePage());

      case '/cart':
        return MaterialPageRoute(builder: (_) => const CartPage());

      case '/product':
        return MaterialPageRoute(
            builder: (_) => ProductPage(
                  product: settings.arguments as Product,
                ));

      case '/profile':
        return MaterialPageRoute(builder: (_) => const ProfilePage());

      case '/wishlist':
        return MaterialPageRoute(builder: (_) => const WishlistPage());

      case '/catalog':
        return MaterialPageRoute(
            builder: (_) => CatalogPage(
                  category: settings.arguments as Category,
                ));

      default:
        return MaterialPageRoute(builder: (_) => const MyHomePage());
    }
  }
}
