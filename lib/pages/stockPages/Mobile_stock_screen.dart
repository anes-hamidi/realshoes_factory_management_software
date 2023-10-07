// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:realshoes_factory_management_software/widget/AppBar/appbareMobile.dart';

class StockScreenMobile extends StatelessWidget {
  const StockScreenMobile({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBarMobile(),
      body: Center(
        child: Text("Stock Mobile") 
      ),
    );
  }
}