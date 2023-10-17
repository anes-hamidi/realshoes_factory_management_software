// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DesktopDrawer extends StatelessWidget {
  const DesktopDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width / 4,
      decoration: const BoxDecoration(
      color: Colors.white,
      ),
      child: const Column(
        children: [
           Padding(
         padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
           
          child: Column(
            children: [

          
          ListTile(
            leading: Icon(Icons.home_filled),
            title: Text('D A C H B O A R D'),
          ),
          ListTile(
            leading: Icon(Icons.home_filled),
            title: Text('A N A L Y T I C'),
          ),
          ListTile(
            leading: Icon(Icons.home_filled),
            title: Text('P A Y M E N T'),
          ),
          ListTile(
            leading: Icon(Icons.home_filled),
            title: Text('S E T T I N G'),
          ),
            ]
           )
           )
        ]
      ),
    );
  }
}
