import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton({@required this.onPressed, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: RawMaterialButton(
        child: Icon(icon),
        onPressed: this.onPressed,
        elevation: 6.0,
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        shape: CircleBorder(),
        fillColor: kInactiveColor,
      ),
    );
  }
}
