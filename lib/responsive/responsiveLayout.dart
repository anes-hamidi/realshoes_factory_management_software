// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  final Widget MobileScaffold;
  final Widget TabletScaffold;
  final Widget DesktopScaffold;
  const LayoutScreen({super.key, 
    required this.MobileScaffold,
    required this.TabletScaffold,
    required this.DesktopScaffold,
    });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500){
      return MobileScaffold;
      }
      else if (constraints.maxWidth >= 500 && constraints.maxWidth < 1100){
        return TabletScaffold;
      } 
      else{
        return DesktopScaffold;
          
      }
    });
  }
}
