// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../objects/productO.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: imageBase64 != null
            ? BoxDecoration(
                image: DecorationImage(
                  image: MemoryImage(base64Decode(imageBase64!)),
                  fit: BoxFit.cover,
                ),
              )
            : null,
        child: Column(
          children: [
            // Your product card content goes here
            // ...
          ],
        ),
      ),
    );
  }
}