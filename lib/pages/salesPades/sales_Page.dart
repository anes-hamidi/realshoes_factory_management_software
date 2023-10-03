import 'package:flutter/material.dart';
import '../../widget/appbare.dart';


class SalesScreen extends StatefulWidget {
  const SalesScreen({super.key});

  @override
  State<SalesScreen> createState() => _SalesScreenState();
}
class _SalesScreenState extends State<SalesScreen> {
  double counter = 399.00;
  String name = 'anes hamidi';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Container(
        decoration: const BoxDecoration(),
        child: Column(
          children: [
          const Padding(padding: EdgeInsets.all(10)),
          Expanded(
             flex: 5, 
              child: Container(
              height: 200,
              width: 500,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.lightBlue),
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.all(20)), 
                  Center(
                    child: Text('$counter.00 DZ',
                    textAlign: TextAlign.center,
                     style: const TextStyle(
                      color: Colors.black,
                       fontSize: 24,
                        fontFamily: 'Roboto',
                         fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment : CrossAxisAlignment.center,
                  children:  [
                  Text('Name: $name'),
                  ]
                 ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Expanded(
            flex: 2,
              child: Column(
                children: [
                  Padding(padding:  EdgeInsets.only(left :8 ,right: 4 )),
                ],
              ),
            ),
          ]
        ),
      ),
      
      
    );
    
  }
}
