// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

import 'desktop_sales_screen.dart';
import 'mobile_sales_screen.dart';
import 'tablet_sales_screen.dart';


class SalesScreenResponsive extends StatelessWidget {
  const SalesScreenResponsive({super.key});

 

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500){
      return const SalesScreenMobile();
      }
      else if (constraints.maxWidth >= 500 && constraints.maxWidth < 1100){
        return const SalesScreenTablet();
      } 
      else{
        return const SalesScreenDesktop();
          
      }
    });
  }
}
