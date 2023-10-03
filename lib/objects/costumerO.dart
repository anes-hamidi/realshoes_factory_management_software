
// Customer
class Customer {
  int? id;
  String name;
  String email;

  Customer({this.id, required this.name, required this.email});

  // Convert a Customer object into a Map for database operations
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }

  // Create a Customer object from a Map retrieved from the database
  factory Customer.fromMap(Map<String, dynamic> map) {
    return Customer(
      id: map['id'],
      name: map['name'],
      email: map['email'],
    );
  }
}

