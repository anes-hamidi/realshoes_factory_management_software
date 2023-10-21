
import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../../objects/productO.dart';
import '../ProductWidget/convertImage.dart';

class ProductCard extends StatefulWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
 

  @override
  Widget build(BuildContext context) {
    
    return Card(
     
      elevation: 3,
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                Text(
                  widget.product.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(widget.product.colors),
                Text('450.00DZ'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


