import 'package:bmi_calculator/components/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/action_button.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Your Result',
                style: kTitleLabelTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: BMICard(
              backgroundColor: kCardColor,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'NORMAL',
                      style: kColoredLabelTextStyle,
                    ),
                    Text(
                      '26.7',
                      style: kHugeLabelTextStyle,
                    ),
                    Text(
                      'You have a higher than normal body weight. Try to exercise more.',
                      style: kDetailsTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ActionButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: 'RE-CALCULATE',
            ),
          ),
        ],
      ),
    );
  }
}
