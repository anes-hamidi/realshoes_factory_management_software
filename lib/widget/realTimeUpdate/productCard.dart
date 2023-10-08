import 'package:flutter/material.dart';

import '../../objects/productO.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(product.name),
          Text(product.description),
          Text('${product.price}'),
        ],
      ),
    );
  }
}