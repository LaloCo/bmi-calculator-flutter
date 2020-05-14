import 'package:flutter/material.dart';

class BMICard extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;

  BMICard({@required this.backgroundColor, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.child,
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        // if there is a decoration, color must be defined inside it
        // otherwise it can stay in the color property
        color: this.backgroundColor,
      ),
    );
  }
}
