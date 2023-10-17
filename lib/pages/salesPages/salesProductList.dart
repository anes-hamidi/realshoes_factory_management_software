// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:realshoes_factory_management_software/widget/realTimeUpdate/productList.dart';

import '../../objects/productO.dart';
import '../../widget/realTimeUpdate/productCard.dart';
import 'package:realshoes_factory_management_software/database/Product/getProduct.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
      future: getProducts(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
        
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return ProductList(product: snapshot.data![index]);
            },
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
