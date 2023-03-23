import 'package:clothingstore/constants.dart';
import 'package:flutter/material.dart';

import '../components/statefull/cart_button_product.dart';
import '../components/statefull/list_color_product.dart';
import '../components/statefull/list_size_product.dart';

class DetailProduct extends StatelessWidget {
  final Products product;

  const DetailProduct({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {})
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_outlined),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 250.0,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10.0)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: SizedBox.fromSize(
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      product.name,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                  Text(
                    product.price,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 16.0),
                  )
                ],
              ),
              const SizedBox(height: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [const Text('Size'), ListSize(sizes: product.size)],
              ),
              const SizedBox(height: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Colors'),
                  ListColor(colors: product.colors)
                ],
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.only(bottom: 54.0),
                child: Text(product.description),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: const CartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
