// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

import 'Desktop_employee_screen.dart';
import 'Mobile_employee_screen.dart';
import 'Tablet_employee_screen.dart';

class EmployeeScreenResponsive extends StatelessWidget {
  const EmployeeScreenResponsive({super.key});

  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500){
      return const EmployeeScreenMobile();
      }
      else if (constraints.maxWidth >= 500 && constraints.maxWidth < 1100){
        return const EmployeeScreenTablet();
      } 
      else{
        return const EmployeeScreenDesktop();
          
      }
    });
  }
}
