import 'package:flutter/material.dart';
import 'constants.dart';

class SliderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'HEIGHT',
            style: kLabelTextStyle,
          ),
        ],
      ),
    );
  }
}
