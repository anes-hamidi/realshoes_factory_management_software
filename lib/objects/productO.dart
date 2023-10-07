// Product
// ignore_for_file: file_names
import 'package:flutter/foundation.dart' show immutable;

@immutable
class Products {
  final int? id;
  final String name;
  final double price;

  const Products(String text, {this.id, required this.name, required this.price});

  // Convert a Product object into a Map for database operations
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
    };
  }

  // Create a Product object from a Map retrieved from the database
  //factory Products.fromMap(Map<String, dynamic> map) {
  //  return Products(
   //   id: map['id'],
    //  name: map['name'],
    //  price: map['price'],
  //  );
//  }
}

