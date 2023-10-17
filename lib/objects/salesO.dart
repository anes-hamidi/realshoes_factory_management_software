// sales
// ignore_for_file: file_names
import 'package:flutter/foundation.dart' show immutable;

@immutable
class Sales {
  final int? id;

  final int customerId;
  final List<int> producstId;
  final int quantity;
  final DateTime saleDate;
  final double totalAmount;

 const Sales({
    this.id,
    required this.customerId,
    required this.producstId,
    required this.quantity,
    required this.saleDate,
    required this.totalAmount,
  });

}                                                                                                                                         