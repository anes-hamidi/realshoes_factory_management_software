import 'package:flutter/material.dart';

import '../../constans/navigation.dart';
import '../../pages/analyticPages/responsiveAnaliseScreen.dart';
import '../../pages/employeePages/responsiveEmployeeScreen.dart';
import '../../pages/payemebtPages/responfivePaymentScreen.dart';
import '../../pages/salesPages/responsiveSalesScreen.dart';
import '../../pages/stockPages/responsiveStockScreen.dart';

class NavigattionBar extends StatelessWidget {
  const NavigattionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height / 10,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            NoAnimationPageRoute(
                                page: const SalesScreenResponsive()));
                      },
                      style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white.withOpacity(0.99),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: const Text("Sales")),
                       OutlinedButton(
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
                      child: const Text("Employee")),
                       OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            NoAnimationPageRoute(
                                page: const PaymentScreenResponsive()));
                      },
                      style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white.withOpacity(0.99),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: const Text("Payment")),
                       OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            NoAnimationPageRoute(
                                page: const StockScreenResponsive()));
                      },
                      style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white.withOpacity(0.99),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: const Text("stok")),
                       OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            NoAnimationPageRoute(
                                page: const AnalyseScreenResponsive()));
                      },
                      style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white.withOpacity(0.99),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: const Text("Analytic")),
    
                ]),
    );
  }
}