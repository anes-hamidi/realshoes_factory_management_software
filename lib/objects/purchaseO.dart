class Purchase {
  int? id;
  int supplierId;
  String purchaseDate;
  int quantity;
  double totalAmount;

  Purchase({
    this.id,
    required this.supplierId,
    required this.purchaseDate,
    required this.quantity,
    required this.totalAmount,
  });

  // Convert a Purchase object into a Map for database operations
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'supplier_id': supplierId,
      'purchase_date': purchaseDate,
      'quantity': quantity,
      'total_amount': totalAmount,
    };
  }

  // Create a Purchase object from a Map retrieved from the database
  factory Purchase.fromMap(Map<String, dynamic> map) {
    return Purchase(
      id: map['id'],
      supplierId: map['supplier_id'],
      purchaseDate: map['purchase_date'],
      quantity: map['quantity'],
      totalAmount: map['total_amount'],
    );
  }
}

