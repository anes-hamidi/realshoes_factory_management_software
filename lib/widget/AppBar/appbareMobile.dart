// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../pages/analyticPages/responsiveAnaliseScreen.dart';
import '../../pages/employeePages/responsiveEmployeeScreen.dart';
import '../../pages/payemebtPages/responfivePaymentScreen.dart';

import '../../constans/navigation.dart';

import '../../pages/salesPages/responsiveSalesScreen.dart';
import '../../pages/stockPages/responsiveStockScreen.dart';
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
                              NoAnimationPageRoute(page: const StockScreenResponsive()));
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
                              NoAnimationPageRoute(page: const PaymentScreenResponsive()));
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
                              NoAnimationPageRoute(page: const SalesScreenResponsive()));
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
                                  page: const EmployeeScreenResponsive()));
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
                              NoAnimationPageRoute(page: const AnalyseScreenResponsive()));
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
