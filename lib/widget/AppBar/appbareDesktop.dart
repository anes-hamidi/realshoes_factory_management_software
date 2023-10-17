// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../constans/navigation.dart';
import '../../pages/stockPages/productList.dart';

class MyAppBarDesktop extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBarDesktop({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(150);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.9),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none),
                    hintText: "Search",
                    prefixIcon: const Icon(Icons.search)),
              ),
            ),
          ),
        ),
        
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          tooltip: 'Open shopping cart',
          onPressed: () {
            Navigator.push(context, NoAnimationPageRoute(page:  const ProductCardScreen()));
            // handle the press
          },
        ),
      ],
    );
  }
}
