import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ActionButton extends StatelessWidget {
  final Function onTap;
  final String text;

  ActionButton({@required this.onTap, @required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        color: kAccentColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            this.text,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
