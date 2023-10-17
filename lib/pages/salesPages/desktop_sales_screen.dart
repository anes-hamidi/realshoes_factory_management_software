import 'package:flutter/material.dart';

import '../../widget/AppBar/navigationBar.dart';
import '../../widget/realTimeUpdate/productList.dart';
import 'salesProductList.dart';




class SalesScreenDesktop extends StatelessWidget {
  const SalesScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Container(
          decoration: const BoxDecoration(),
          child: Row(
          children: [
            
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height - ( MediaQuery.of(context).size.height / 6),
              decoration: const BoxDecoration(),

              child: Column(
                children:[
                  NavigattionBar(),
                  Text('Products', style: Theme.of(context).textTheme.displayLarge, textAlign: TextAlign.center),
                  const Expanded(child: ProductListScreen(), ),
                ]
              ),
              

            )



          ]
          ),
        ),
        );
  }
}
