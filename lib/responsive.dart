// ignore_for_file: non_constant_identifier_names, no_leading_underscores_for_local_identifiers
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    super.key,
    this.largest,
    required this.desktop,
    required this.tablet,
    required this.mobile,
    required this.smallest,
  });

  final Widget? largest;
  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;
  final Widget? smallest;

  static int xLarge = 1400; // Largest [ TVs ]
  static int large = 1200; // Desktop [ isDesktop ]
  static int medium = 992; // Tablet [ isTablet ]
  static int small = 768; // Mobile [ isMobile ]
  static int xSmall = 500; // Smallest [ SmartDevice ]

// const kMobileBreakpoint = 576;
// const kTabletBreakpoint = 1024;
// const kDesktopBreakPoint = 1366;

  static bool isLargest(BuildContext context) {
    return MediaQuery.of(context).size.width > xLarge;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= xLarge;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width <= medium;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= small;
  }

  static bool isSmallest(BuildContext context) {
    return MediaQuery.of(context).size.width <= xSmall;
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width > large) {
      return largest!;
    } else if (_size.width >= large || _size.width > medium) {
      return desktop!;
    } else if (_size.width <= medium || _size.width > small && tablet != null) {
      return tablet!;
    } else if (_size.width <= small || _size.width > xSmall) {
      return mobile!;
    } else {
      return smallest!;
    }
  }

  // @override
  // Widget build(BuildContext context) {
  //   final Size _size = MediaQuery.of(context).size;
  //   if (_size.width > large) {
  //     return largest!;
  //   } else if (_size.width <= large || _size.width > medium) {
  //     return desktop!;
  //   } else if (_size.width <= medium || _size.width > small && tablet != null) {
  //     return tablet!;
  //   } else if (_size.width <= small || _size.width > xSmall) {
  //     return mobile!;
  //   } else {
  //     return smallest!;
  //   }
  // }

}

