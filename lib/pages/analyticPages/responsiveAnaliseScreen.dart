// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

import 'Desktop_analytic_screen.dart';
import 'Mobile_analytic_screen.dart';
import 'Tablet_analytic_screen.dart';

class AnalyseScreenResponsive extends StatelessWidget {
  const AnalyseScreenResponsive({super.key});

 

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500){
      return const AnalyseScreenMobile();
      }
      else if (constraints.maxWidth >= 500 && constraints.maxWidth < 1100){
        return const AnalyseScreenTablet();
      } 
      else{
        return const AnalyseScreenDesktop();
          
      }
    });
  }
}
