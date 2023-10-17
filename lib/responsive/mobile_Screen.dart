
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:realshoes_factory_management_software/widget/AppBar/appbareMobile.dart';

import '../pages/salesPages/responsiveSalesScreen.dart';



class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      appBar: MyAppBarMobile(),
      body: SalesScreenResponsive(),
    );
        
  }
}
