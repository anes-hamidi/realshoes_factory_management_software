import 'package:mongo_dart/mongo_dart.dart';


Future<Db> connectToMongoDB() async {
  final db = Db('mongodb://localhost:27017/');

  await db.open();

  return db;
}





