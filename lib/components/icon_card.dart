import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconCard extends StatelessWidget {
  final IconData icon;
  final String text;

  IconCard({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          this.text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}