import 'package:clothingstore/components/stateless/shirt_catalog.dart';
import 'package:flutter/material.dart';

import '../components/statefull/types_catalog.dart';
import '../components/stateless/banner_catalog.dart';

class Catalogue extends StatelessWidget {
  const Catalogue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sapiens Catalog'),
          elevation: 0.0,
          actions: [
            IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {})
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: const [
                BannerCatalog(),
                TypesCatalog(),
                GridShirtCatalog(),
              ],
            ),
          ),
        ));
  }
}
