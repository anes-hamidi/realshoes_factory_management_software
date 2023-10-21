
import 'package:realshoes_factory_management_software/database/connection.dart';
import 'package:realshoes_factory_management_software/objects/productO.dart';


Future<List<Product>> getProducts() async {
  final db = await connectToMongoDB();

  var collection = db.collection('products');

  var results = await collection.find().toList();

  List<Product> products = [];

  for (var result in results) {
    products.add(
      Product(
        name: result['name'],
        size: result['size'],
        colors: result['colors']
      )
    );
  }

  return products;
}
// mongodb+srv://aneshamididev:anesBnn@123@anes-hamidi.fuekk7a.mongodb.net