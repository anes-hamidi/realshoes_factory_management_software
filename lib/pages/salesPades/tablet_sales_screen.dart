import 'package:flutter/material.dart';

import '../../widget/AppBar/appbareTablet.dart';

class SalesScreenTablet extends StatelessWidget {
  const SalesScreenTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:  const MyAppBarTablet(),
      body: Column(
        children: [
         Center(
            child:  Container(
              decoration: const BoxDecoration(),
            child:const Text("Sales Tablet"),
          ),),
          // Add the widgets for the desktop layout of the sales operation screen here.
        ],
      ),
    );
  }
}