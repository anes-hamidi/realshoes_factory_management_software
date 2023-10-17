// ignore_for_file: file_names

import 'package:flutter/material.dart';



import '../../widget/SalesWidget/calculator.dart';
import 'productList.dart';


class StockScreenDesktop extends StatefulWidget {
  const StockScreenDesktop({super.key});

  @override
  State<StockScreenDesktop> createState() => _StockScreenDesktopState();
}

class _StockScreenDesktopState extends State<StockScreenDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          

        body: Container(
            decoration: const BoxDecoration(),
            child:  Column(children: [
             
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 1.2,
                  decoration:  const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                  boxShadow: <BoxShadow>[
                    // BoxShadow(blurRadius: 4),
                    BoxShadow(color: Color.fromRGBO(68, 91, 124, .3), 
                    offset: Offset(0, 4), blurRadius: 8),
                    ],
                    gradient: LinearGradient(
                       
                      begin: Alignment.topLeft,
                       end: Alignment.bottomRight,
                        
                      colors: [
                      Color.fromARGB(255, 255, 255, 255),
                     Color.fromARGB(255, 150, 255, 164)
                     ]
                        )
                    
                     
                  ),

                ),


                Expanded(
                 
                child: Container(
                  

                  height: MediaQuery.of(context).size.height / 1.2,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,


                       
                     
                        
                      colors: [
                      Color.fromARGB(255, 255, 255, 255),
                     Color.fromARGB(255, 176, 253, 186),
                     Color.fromARGB(255, 217, 250, 222),




                     Color.fromARGB(255, 149, 194, 155)

                     ]

                        ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: const ProductCardScreen()
                ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 1.2,
                  decoration:  const BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                  boxShadow: <BoxShadow>[
                    // BoxShadow(blurRadius: 4),
                    BoxShadow(color: Color.fromRGBO(68, 91, 124, .3), 
                    offset: Offset(0, 4), blurRadius: 8),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                       end: Alignment.bottomRight,
                        
                      colors: [
                      Color.fromARGB(255, 255, 255, 255),
                     Color.fromARGB(255, 150, 255, 164)
                     ]
                        )
                    
                     
                  ),
                 

                ),

              ]
             ),
            ])),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            
          },
          child: CalcButton(),
        ));
  }
}
