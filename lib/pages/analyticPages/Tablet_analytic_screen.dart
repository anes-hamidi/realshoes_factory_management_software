// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:realshoes_factory_management_software/widget/AppBar/appbareTablet.dart';

class AnalyseScreenTablet extends StatelessWidget {
  const AnalyseScreenTablet({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBarTablet(),
      body: Center(
        child: Text("Analyse Tablet")
      ),
    );
  }
}