
// ignore_for_file: file_names
import 'package:flutter/foundation.dart' show immutable;

@immutable
// invoices
class Invoice {
  final int? id;
  final int customerId;
  final String invoiceDate;
  final double totalAmount;

  const Invoice({
    this.id,
    required this.customerId,
    required this.invoiceDate,
    required this.totalAmount,
  });

  // Convert an Invoice object into a Map for database operations
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'customer_id': customerId,
      'invoice_date': invoiceDate,
      'total_amount': totalAmount,
    };
  }

  // Create an Invoice object from a Map retrieved from the database
  factory Invoice.fromMap(Map<String, dynamic> map) {
    return Invoice(
      id: map['id'],
      customerId: map['customer_id'],
      invoiceDate: map['invoice_date'],
      totalAmount: map['total_amount'],
    );
  }
}
