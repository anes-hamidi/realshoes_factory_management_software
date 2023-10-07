// sales
// ignore_for_file: file_names
import 'package:flutter/foundation.dart' show immutable;

@immutable
class Sales {
  final int? id;
  final int customerId;
  final int productId;
  final String saleDate;
  final int quantity;
  final double totalAmount;

 const Sales({
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

