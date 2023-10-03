import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

import '../pages/salesPades/sales_Page.dart';

class SalesOperationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return SalesScreen();
          // Return the mobile layout of the sales operation screen.
        } else if (sizingInformation.deviceScreenType ==
            DeviceScreenType.tablet) {
          // Return the tablet layout of the sales operation screen.
                    return SalesScreen();

        } else {
          // Return the desktop layout of the sales operation screen.
          return SalesScreen();
        }
      },
    );
  }
}
