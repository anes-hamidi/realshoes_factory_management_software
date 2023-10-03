import 'package:flutter/material.dart';
import 'package:realshoes_factory_management_software/widget/appbare.dart';

class Analytic extends StatelessWidget {
  const Analytic({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(), 
      body: Center(
        child: Text("Analytic")  
      ),
    );
  }
}