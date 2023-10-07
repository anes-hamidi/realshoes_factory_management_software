// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:realshoes_factory_management_software/pages/analyticPages/Mobile_analytic_screen.dart';
import 'package:realshoes_factory_management_software/pages/employeePages/Mobile_employee_screen.dart';
import 'package:realshoes_factory_management_software/pages/payemebtPages/Mobile_payment_screen.dart';
import 'package:realshoes_factory_management_software/pages/salesPades/mobile_sales_screen.dart';
import 'package:realshoes_factory_management_software/pages/stockPages/Mobile_stock_screen.dart';
import '../../constans/navigation.dart';

import '../Drawer/Drawer.dart';

class MyAppBarMobile extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBarMobile({super.key});

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
                          Navigator.push(context,
                              NoAnimationPageRoute(page: const StockScreenMobile()));
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
                              NoAnimationPageRoute(page: const PaymentScreenMobile()));
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
                              NoAnimationPageRoute(page: const SalesScreenMobile()));
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
                                  page: const EmployeeScreenMobile()));
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
                              NoAnimationPageRoute(page: const AnalyseScreenMobile()));
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
