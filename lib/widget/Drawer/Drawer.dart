// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(Icons.favorite),
          ),
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
      ),
    );
  }
}
