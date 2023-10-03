// Product
class Product {
  int? id;
  String name;
  double price;

  Product({this.id, required this.name, required this.price});

  // Convert a Product object into a Map for database operations
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
    };
  }

  // Create a Product object from a Map retrieved from the database
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      name: map['name'],
      price: map['price'],
    );
  }
}

