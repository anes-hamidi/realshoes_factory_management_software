
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

}