import 'package:flutter/material.dart';

import '../../widget/AppBar/appbareDesktop.dart';

class SalesScreenDesktop extends StatelessWidget {
  const SalesScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:  const MyAppBarDesktop(),
      body: Column(
        children: [
         Center(
            child:  Container(
              decoration: const BoxDecoration(),
            child: const Text("Sales Desktop"),
          ),),
          // Add the widgets for the desktop layout of the sales operation screen here.
        ],
      ),
      
    );
  }
}