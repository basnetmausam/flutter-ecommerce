import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../models/category_model.dart';
import '../widgets/appbar.dart';
import '../widgets/carousal.dart';
import '../widgets/navbar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Mero Shop',
      ),
      body: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
        ),
        items: Category.categories
            .map((e) => HeroCarouselCard(category: e))
            .toList(),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
