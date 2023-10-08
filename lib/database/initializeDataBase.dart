import 'package:mongo_dart/mongo_dart.dart';

import '../objects/productO.dart';

Future<Db> connectToMongoDB() async {
  final db = Db('mongodb://localhost:27017/');

  await db.open();

  return db;
}

Future<Db> insertProduct(
    String name,
    String description,
    int pointur,
    double price,
    double cost,
    //List module,

     ) async {
  final db = await connectToMongoDB();
  final collection = db.collection('products');

  await collection.insertOne({
    'name': name,
    'description': description,
    'pointur': pointur,
    'price': price,
    'cost': cost,
  });

  return db;
}

Future<Db> insertEmployee(
    String name, int phone, String role, double salry) async {
  final db = await connectToMongoDB();

  var collection = db.collection('Employee');

  await collection.insertOne({
    'name': name,
    'phone': phone,
    'role': role,
    'salry': salry
  });

  return db;
}
Future<Db> insertCostumers(
    String name,
     int phone,
     String role,
     //List interest,
     String email) async {

  final db = await connectToMongoDB();

  var collection = db.collection('costumers');

  await collection.insertOne({
    'name': name,
    'phone': phone,
    'email': email,
    //'interest': interest 
  });

  return db;
}
Future<List<Product>> getAllProducts() async {
  final db = await connectToMongoDB();

  var collection = db.collection('products');

  var results = await collection.find().toList();

  List<Product> products = [];

  for (var result in results) {
    products.add(Product(
      id: result['_id'].toString(),
      name: result['name'],
      description: result['description'],
      pointur: result['pointur'],
      price: result['price'],
      cost: result['cost'],
    ));
  }

  await db.close();

  return products;
}