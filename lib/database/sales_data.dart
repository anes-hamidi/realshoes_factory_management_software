import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SalesDatabase {

  static final SalesDatabase _instance = SalesDatabase._internal();

  factory SalesDatabase() => _instance;

  static Database? _db;

  Future<Database> get db async {
    if(_db != null) {
      return _db!;
    } 

    _db = await initDb();
    return _db!;
  }

  SalesDatabase._internal();

  initDb() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'sales_db.db'),
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE products(
            id INTEGER PRIMARY KEY,
            name TEXT,
            description TEXT,
            price REAL
          )
        ''');

        await db.execute('''
          CREATE TABLE customers(
            id INTEGER PRIMARY KEY, 
            name TEXT,
            email TEXT
          )
        ''');

        await db.execute('''
          CREATE TABLE employees(
            id INTEGER PRIMARY KEY,
            name TEXT,
            role TEXT
          )
        ''');
        await db.execute('''
  CREATE TABLE invoices(
    id INTEGER PRIMARY KEY,
    customer_id INTEGER, 
    total REAL,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
  )  
''');
      },
      version: 1
    );
  }

}