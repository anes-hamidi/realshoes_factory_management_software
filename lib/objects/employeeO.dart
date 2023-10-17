// ignore_for_file: file_names
import 'package:flutter/foundation.dart' show immutable;

@immutable
// Employee
class Employee {
  final int? id;
  final String name;
  final double salary;
  final int phone;
  final String adress;
  final String designation;

  const Employee(
    {this.id,
     required this.name,
      required this.designation,
      required this.salary,      
      required this.phone,
      required this.adress});  
}
