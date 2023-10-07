// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

import 'Desktop_payment_page.dart';
import 'Mobile_payment_screen.dart';
import 'Tablet_payment_page.dart';

class PaymentScreenResponsive extends StatelessWidget {
  const PaymentScreenResponsive({super.key});

 

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500){
      return const PaymentScreenMobile();
      }
      else if (constraints.maxWidth >= 500 && constraints.maxWidth < 1100){
        return const PaymentScreenTablet();
      } 
      else{
        return const PaymentScreenDesktop();
          
      }
    });
  }
}
