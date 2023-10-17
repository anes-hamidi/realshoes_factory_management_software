// ignore_for_file: file_names

import 'package:realshoes_factory_management_software/database/connection.dart';
import 'package:mongo_dart/mongo_dart.dart';
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