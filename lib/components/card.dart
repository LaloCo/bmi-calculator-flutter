import 'package:flutter/material.dart';

class BMICard extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;
  final Function onTap;

  BMICard({@required this.backgroundColor, this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: this.child,
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          // if there is a decoration, color must be defined inside it
          // otherwise it can stay in the color property
          color: this.backgroundColor,
        ),
      ),
    );
  }
}
