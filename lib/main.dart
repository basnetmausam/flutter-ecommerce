import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mero_shop/bloc/cart/cart_bloc.dart';
import 'package:mero_shop/utils/app_router.dart';
import 'package:mero_shop/utils/themes.dart';
import 'bloc/wishlist/wishlist_bloc.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WishlistBloc()..add(StartWishlist())),
        BlocProvider(create: (_) => CartBloc()..add(CartStarted()))
      ],
      child: MaterialApp(
        title: 'Mero Shop',
        theme: MyThemes.lightTheme(context),
        darkTheme: MyThemes.darkTheme(context),
        themeMode: ThemeMode.system,
        onGenerateRoute: _appRouter.onGenerateRoute,
        home: const MyHomePage(),
      ),
    );
  }
}
