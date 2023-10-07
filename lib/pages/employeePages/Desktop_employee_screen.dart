// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:realshoes_factory_management_software/widget/AppBar/appbareDesktop.dart';

class EmployeeScreenDesktop extends StatelessWidget {
  const EmployeeScreenDesktop({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBarDesktop(),
      body: Center(
        child: Text("Employees Desktop")
      ),
    );
  }
}