import 'package:flutter/material.dart';

class ResponsiveLayOut extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayOut({super.key, required this.mobileScreenLayout, required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints. maxWidth > 900) {
         return webScreenLayout;
      }
      return mobileScreenLayout;
  });
  }
}