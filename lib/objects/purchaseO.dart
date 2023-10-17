// ignore_for_file: file_names

class Purchase {
  final int? id;
  final int supplierId;
  final String purchaseDate;
  final int quantity;
  final double totalAmount;

  const Purchase({
    this.id,
    required this.supplierId,
    required this.purchaseDate,
    required this.quantity,
    required this.totalAmount,
  });

}