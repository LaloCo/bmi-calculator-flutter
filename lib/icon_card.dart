import 'package:flutter/material.dart';

const Color inactiveColor = Color(0xFF8D8E98);

class IconCard extends StatelessWidget {
  final IconData icon;
  final String text;

  IconCard({@required this.icon, @required this.text}) {}

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
          style: TextStyle(
            fontSize: 18.0,
            color: inactiveColor,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
