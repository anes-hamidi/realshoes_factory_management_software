// ignore_for_file: must_be_immutable, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'pages/salesPades/sales_Page.dart';


void main() {
  


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FactoryManagementApp(),
    );
  }
}

class FactoryManagementApp extends StatelessWidget {
  const FactoryManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SalesScreen(),
    );
  }
}
