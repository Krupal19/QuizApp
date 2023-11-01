import 'package:flutter/material.dart';

class appTheme extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final Color color5;
  final Widget child; // Add a child parameter to the constructor

  appTheme({
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
    required this.color5,
    required this.child, // Add this line
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [color1, color2, color3, color4, color5],
        ),
      ),
      child: child, // Use the child widget here
    );
  }
}
