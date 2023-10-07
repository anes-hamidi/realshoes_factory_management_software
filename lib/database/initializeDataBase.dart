import 'dart:io';
import 'dart:math';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../objects/costumerO.dart';

class SQLiteHelper {
  Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await initDB();
    return _database!;
  }

  Future<Database> initDB() async {
    final databaseFactory = databaseFactoryFfi;
    if (Platform.isWindows || Platform.isLinux) {
      sqfliteFfiInit();
      final appDocumentsDir = await getApplicationDocumentsDirectory();
      final dbPath = join(appDocumentsDir.path, "databases", "RealShoes.db");
      final winLinuxDB = await databaseFactory.openDatabase(
        dbPath,
        options: OpenDatabaseOptions(
          version: 1,
          onCreate: _onCreate,
        ),
      );
      return winLinuxDB;
    } else if (Platform.isAndroid || Platform.isIOS) {
      final documentsDirectory = await getApplicationDocumentsDirectory();
      final path = join(documentsDirectory.path, "RealShoes.db");
      final iOSAndroidDB = await openDatabase(
        path,
        version: 1,
        onCreate: _onCreate,
      );
      return iOSAndroidDB;
    }
    throw Exception("Unsupported platform");
  }

  Future<void> _onCreate(Database database, int version) async {
    final db = database;
    await db.execute(""" CREATE TABLE IF NOT EXISTS products(
            id INTEGER PRIMARY KEY,
            name TEXT,
            email TEXT,
            Adress TEXT,
            phone INTEGER
            
          )
 """);
  }

 

  Future<List<User>> getAllUsers() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('products');

    return List.generate(maps.length, (index) {
      return User(
        id: maps[index]['id'],
        name: maps[index]['name'],
        age: maps[index]['age'],
       
      );
    });
  }

  Future<User?> getUserById(int productId) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'users',
      where: 'id = ?',
      whereArgs: [productId],
    );

    if (maps.isNotEmpty) {
      return User(
        id: maps[0]['id'],
        name: maps[0]['name'],
        age: maps[0]['age'],
        
      );
    }

    return null;
  }


  Future<void> deleteAllUsers() async {
    final db = await database;
    final Batch batch = db.batch();

    batch.delete('products');

    await batch.commit();
  }
}