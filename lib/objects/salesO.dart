// sales
class Sales {
  int? id;
  int customerId;
  int productId;
  String saleDate;
  int quantity;
  double totalAmount;

  Sales({
    this.id,
    required this.customerId,
    required this.productId,
    required this.saleDate,
    required this.quantity,
    required this.totalAmount,
  });

  // Convert a Sale object into a Map for database operations
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'customer_id': customerId,
      'product_id': productId,
      'sale_date': saleDate,
      'quantity': quantity,
      'total_amount': totalAmount,
    };
  }

  // Create a Sale object from a Map retrieved from the database
  factory Sales.fromMap(Map<String, dynamic> map) {
    return Sales(
      id: map['id'],
      customerId: map['customer_id'],
      productId: map['product_id'],
      saleDate: map['sale_date'],
      quantity: map['quantity'],
      totalAmount: map['total_amount'],
    );
  }
}

