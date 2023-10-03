import 'package:flutter/material.dart';
import 'package:realshoes_factory_management_software/widget/appbare.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: const Center(
        child: Text("Employees")
      ),
    );
  }
}