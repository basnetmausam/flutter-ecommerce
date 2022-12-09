import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Mero Shoes',
      ),
      bottomNavigationBar: const NavBar(),
      body: Column(
        children: [
          CarouselSlider(
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
          const SectionHeader(
            text: 'Recommended',
          ),
          ProductCarousel(
            height: height,
            width: width,
            product: Product.products
                .where((element) => element.isRecommended)
                .toList(),
          ),
          const SectionHeader(
            text: 'Most Popular',
          ),
          ProductCarousel(
            height: height,
            width: width,
            product:
                Product.products.where((element) => element.isPopular).toList(),
          ),
        ],
      ),
    );
  }
}
