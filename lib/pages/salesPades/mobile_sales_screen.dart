import 'package:flutter/material.dart';

import '../../widget/AppBar/appbareMobile.dart';

class SalesScreenMobile extends StatelessWidget {
  const SalesScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: const MyAppBarMobile(),
      body: Column(
        children: [
         Center(
            child:  Container(
              decoration: const BoxDecoration(),
            child: const Text("Sales Mobile"),
          ),),
          // Add the widgets for the desktop layout of the sales operation screen here.
        ],
      ),
    );
  }
}