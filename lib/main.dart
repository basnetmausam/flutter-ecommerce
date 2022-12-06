import 'package:flutter/material.dart';
import 'package:mero_shop/utils/app_router.dart';
import 'package:mero_shop/utils/themes.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mero Shop',
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      themeMode: ThemeMode.system,
      onGenerateRoute: _appRouter.onGenerateRoute,
      home: const MyHomePage(),
    );
  }
}
// @override
// void dispose() {
//   _app
//   super.dispose();
// }
