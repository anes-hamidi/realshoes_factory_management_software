
// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TotalsDesktop extends StatelessWidget {
  double total = 0.00;
   TotalsDesktop({Key? key , required this.total}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width /3,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade300

      ),
      child: Text('$total.00 DZ'),
    );
  }
}
