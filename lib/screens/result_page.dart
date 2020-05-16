import 'package:bmi_calculator/components/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/action_button.dart';

class ResultPage extends StatelessWidget {
  final String bmiValue;
  final String bmiResult;
  final String bmiInterpretation;

  ResultPage(
      {@required this.bmiValue,
      @required this.bmiResult,
      @required this.bmiInterpretation});

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
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
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
                      this.bmiResult.toUpperCase(),
                      style: kColoredLabelTextStyle,
                    ),
                    Text(
                      this.bmiValue,
                      style: kHugeLabelTextStyle,
                    ),
                    Text(
                      this.bmiInterpretation,
                      style: kDetailsTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          ActionButton(
            onTap: () {
              Navigator.pop(context);
            },
            text: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
