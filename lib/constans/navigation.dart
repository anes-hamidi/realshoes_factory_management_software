import 'package:flutter/material.dart';

class NoAnimationPageRoute extends PageRouteBuilder {
  final Widget page;
  NoAnimationPageRoute({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionDuration: const Duration(seconds: 0),
        );
}