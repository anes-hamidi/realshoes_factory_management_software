// ignore_for_file: file_names

import 'package:realshoes_factory_management_software/database/connection.dart';
import 'package:mongo_dart/mongo_dart.dart';

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