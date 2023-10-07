// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:realshoes_factory_management_software/widget/AppBar/appbareTablet.dart';

class TabletScreen extends StatefulWidget {
  const TabletScreen({super.key});
  @override
  State<TabletScreen> createState() => _TabletScreenState();
}
class _TabletScreenState extends State<TabletScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: const MyAppBarTablet(),
      body: Container(
        decoration: const BoxDecoration(),
        child: const Center(child: Text('Tablet Screen')),
      ),
    );
  }
}