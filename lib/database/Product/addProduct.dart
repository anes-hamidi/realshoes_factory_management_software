import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:realshoes_factory_management_software/database/connection.dart';
import 'package:mongo_dart/mongo_dart.dart';

Future<Db> insertProduct(
    String name,
    String description,
    int pointur,
    double price,
    double cost,
    PickedFile? imageUrl,
) async {
  final db = await connectToMongoDB();
  final collection = db.collection('products');

  String? imageBase64;
  if (imageUrl != null) {
    final imageBytes = await imageUrl.readAsBytes();
    imageBase64 = base64Encode(imageBytes);
  }

  await collection.insertOne({
    'name': name,
    'description': description,
    'pointur': pointur,
    'price': price,
    'cost': cost,
    'image': imageBase64 // Store the base64-encoded image
  });

  return db;
}
