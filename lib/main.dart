// ignore_for_file: must_be_immutable, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'responsive/desktop_Screen.dart';
import 'responsive/mobile_Screen.dart';
import 'responsive/tablet_Screen.dart';
import 'responsive/responsiveLayout.dart';

void main() {
  

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FactoryManagementApp(),
    );
  }
}

class FactoryManagementApp extends StatelessWidget {
  const FactoryManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const LayoutScreen(
      TabletScaffold: TabletScreen(),
      MobileScaffold: MobileScreen(),
      DesktopScaffold: DesktopScreen(),
    );
  }
}
