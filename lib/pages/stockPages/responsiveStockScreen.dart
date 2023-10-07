// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

import 'Desktop_stock_screen.dart';
import 'Mobile_stock_screen.dart';
import 'Tablet_stock_screen.dart';


class StockScreenResponsive extends StatelessWidget {
  const StockScreenResponsive({super.key});

 

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500){
      return const StockScreenMobile();
      }
      else if (constraints.maxWidth >= 500 && constraints.maxWidth < 1100){
        return const StockScreenTablet();
      } 
      else{
        return const StockScreenDesktop();
          
      }
    });
  }
}
