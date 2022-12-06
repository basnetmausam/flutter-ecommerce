import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/navbar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        title: 'Mero Shop',
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
