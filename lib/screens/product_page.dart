import 'package:flutter/material.dart';
import 'package:mero_shop/widgets/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/models.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppbar(
        title: product.name,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(
                Icons.share,
                size: 35,
              ),
              const Icon(
                Icons.favorite,
                size: 35,
              ),
              ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white)),
                onPressed: () {
                  debugPrint('Received click');
                },
                child: Text(
                  'Add to cart',
                  style: context.textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.fitWidth,
                height: 300,
                width: double.infinity,
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                height: 100,
                color: Colors.black.withAlpha(60),
              ),
              Container(
                height: 80,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      product.name,
                      style: context.textTheme.bodyText1
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " Rs ${product.price.toString()}",
                      style: context.textTheme.bodyText1
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ).pOnly(top: 10, left: 10, right: 10),
            ],
          ),
          ExpansionTile(
            initiallyExpanded: true,
            title: const Text(
              "Description",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            children: [
              ListTile(
                title: Text(
                  product.description,
                  style: const TextStyle(
                    fontSize: 17,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
