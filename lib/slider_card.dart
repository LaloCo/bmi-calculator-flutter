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
          Row(
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: <Widget>[
              Text(
                '180',
                style: kLargeLabelTextStyle,
              ),
              Text(
                'cm',
                style: kLabelTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
