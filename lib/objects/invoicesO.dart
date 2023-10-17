
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

}
