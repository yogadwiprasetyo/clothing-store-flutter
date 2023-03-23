import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../screens/detail.dart';

class GridShirtCatalog extends StatelessWidget {
  const GridShirtCatalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: productList.length,
        physics: const ScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          final Products product = productList[index];
          return CardShirtCatalog(product: product);
        });
  }
}

class CardShirtCatalog extends StatelessWidget {
  final Products product;

  const CardShirtCatalog({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailProduct(product: product);
          }));
        },
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 4.0, top: 4.0, bottom: 4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            product.price,
                            style: const TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: SizedBox(
                      width: 16.0,
                      height: 16.0,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.shopping_bag_outlined),
                          padding: const EdgeInsets.all(0.0),
                          iconSize: 16.0),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
