// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:realshoes_factory_management_software/widget/AppBar/appbareDesktop.dart';

class StockScreenDesktop extends StatelessWidget {
  const StockScreenDesktop({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBarDesktop(),
      body: Center(
        child: Text("Stock Desktop") 
      ),
    );
  }
}