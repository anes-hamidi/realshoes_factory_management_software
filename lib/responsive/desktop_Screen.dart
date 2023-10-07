// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:realshoes_factory_management_software/widget/AppBar/appbareDesktop.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBarDesktop(),
        body: Container(
          decoration: BoxDecoration(),
          child: Column(
            children: [
             Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200],
                 ), 
                child: const Row(
                  children: [
                    SizedBox(width: 10,),
                    Expanded(flex: 9, child: Text("Name", style: TextStyle(color: Colors.white), textAlign:
                    TextAlign.center,), ) ,
                    SizedBox(width: 10,),
                    Expanded(flex: 3,child: Text("Price",style: TextStyle(color: Colors.white),textAlign:
                    TextAlign.center,),),
                    SizedBox(width: 10,),
                  ]
                )
             ),         
              Row(
                children: [
                  Column(
                    children: [
                      
                        Container(                   
                        width: MediaQuery.of(context).size.width /3,
                        
                        height: MediaQuery.of(context).size.height / 1.5,
                        decoration:  BoxDecoration(
                          color: Colors.brown,
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 50),
                            
                          ]
                        )
                      ),
                      
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}