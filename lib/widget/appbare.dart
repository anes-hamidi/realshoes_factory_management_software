import 'package:flutter/material.dart';
import 'package:realshoes_factory_management_software/pages/stockPages/stock_Page.dart';
import '../constans/navigation.dart';
import '../pages/analyticPages/analytic_page.dart';
import '../pages/employeePages/employe_page.dart';

import '../pages/payemebtPages/payment_Page.dart';
import '../pages/salesPades/sales_Page.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(150);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        title: const Text("Real Shoes Management System",
            style: TextStyle(color: Colors.white, fontSize: 24)),
        centerTitle: true,
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
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
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                          context,
                          NoAnimationPageRoute(page: const StockPage())  
                      );
                        },
                        style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white.withOpacity(0.99),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: const Text("Stock"))),
                const SizedBox(width: 10),
                Expanded(
                    child: OutlinedButton(
                        onPressed: () {
                             Navigator.push(
                          context,
                          NoAnimationPageRoute(page: const PaymentPage())  
                      );
                        },
                        style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white.withOpacity(0.99),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: const Text("payment"))),
                const SizedBox(width: 10),
                Expanded(
                    child: OutlinedButton(
                        onPressed: () {
                              Navigator.push(
                          context,
                          NoAnimationPageRoute(page:  SalesScreen())  
                      );
                        },
                        style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white.withOpacity(0.99),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: const Text("Sales"))),
                const SizedBox(width: 10),
                Expanded(
                    child: OutlinedButton(
                        onPressed: () {
                                  Navigator.push(
                          context,
                          NoAnimationPageRoute(page: const EmployeeScreen())  
                      );
                        },
                        style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white.withOpacity(0.99),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: const Text("Employee"))),
                const SizedBox(width: 10),
                Expanded(
                    child: OutlinedButton(
                        onPressed: () {
                                      Navigator.push(
                          context,
                          NoAnimationPageRoute(page: const Analytic())  
                      );
                        },
                        style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white.withOpacity(0.99),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: const Text("Analytics"))),
              ],
            )));
  }
}
