


import 'package:realshoes_factory_management_software/database/connection.dart';
import 'package:mongo_dart/mongo_dart.dart';

Future<Db> insertProduct(
  String name,
  int size,
  String colors, {required String name}
) async {
  final db = await connectToMongoDB();
  final collection = db.collection('products_shoes');

  // If an image is provided, read it as bytes and insert it into the database.
  

  await collection.insertOne({
    'name': name,
    'size': size,
    'colors': colors
   
  });

  return db;
}
