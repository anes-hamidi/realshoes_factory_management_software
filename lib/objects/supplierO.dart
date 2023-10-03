
// supplires
class Supplier {
  int? id;
  String type;
  double total_amount;

  Supplier({
    this.id,
    required this.type,
    required this.total_amount,
  });

  // Convert a Supplier object into a Map for database operations
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'total_amount': total_amount,
    };
  }

  // Create a Supplier object from a Map retrieved from the database
  factory Supplier.fromMap(Map<String, dynamic> map) {
    return Supplier(
      id: map['id'],
      type: map['type'],
      total_amount: map['total_amount'],
    );
  }
}
