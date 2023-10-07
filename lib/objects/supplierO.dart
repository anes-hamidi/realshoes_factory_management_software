
// ignore_for_file: file_names, non_constant_identifier_names
import 'package:flutter/foundation.dart' show immutable;

@immutable
// supplires
class Supplier {
  final int? id;
  final String type;
  final double total_amount;

const Supplier({
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
