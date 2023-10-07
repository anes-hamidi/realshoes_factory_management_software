// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:realshoes_factory_management_software/pages/employeePages/Tablet_employee_screen.dart';
import 'package:realshoes_factory_management_software/pages/payemebtPages/Tablet_payment_page.dart';
import '../../constans/navigation.dart';
import '../../pages/analyticPages/Tablet_analytic_screen.dart';

import '../../pages/salesPades/tablet_sales_screen.dart';
import '../../pages/stockPages/Tablet_stock_screen.dart';
import '../Drawer/Drawer.dart';

class MyAppBarTablet extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBarTablet({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(150);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        title: const Text("Real Shoes Management System",
            style: TextStyle(color: Colors.white, fontSize: 24)),
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              const MobileDrawer();
            }),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
         
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(context,
                              NoAnimationPageRoute(page:  const StockScreenTablet()));
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
                          Navigator.push(context,
                              NoAnimationPageRoute(page: const PaymentScreenTablet()));
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
                          Navigator.push(context,
                              NoAnimationPageRoute(page: const SalesScreenTablet()));
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
                              NoAnimationPageRoute(
                                  page: const EmployeeScreenTablet()));
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
                          Navigator.push(context,
                              NoAnimationPageRoute(page: const AnalyseScreenTablet()));
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
