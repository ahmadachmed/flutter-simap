import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key key,
    @required this.mobile,
    @required this.tablet,
    @required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.height < 668;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.height < 900 &&
      MediaQuery.of(context).size.height >= 669;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.height >= 900;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 900) {
          return desktop;
        } else if (constraints.maxHeight >= 650) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
