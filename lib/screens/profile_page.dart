import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/navbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        title: 'Profile',
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
