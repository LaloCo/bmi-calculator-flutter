import 'result_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/icon_card.dart';
import 'package:bmi_calculator/genders.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/components/action_button.dart';
import 'package:bmi_calculator/bmi_calculator.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
  int height = 180;
  int weight = 81;
  int age = 27;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BMICard(
                    onTap: () {
                      // male card pressed
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    backgroundColor: selectedGender == Gender.male
                        ? kCardColor
                        : kInactiveCardColor,
                    child: IconCard(icon: FontAwesomeIcons.mars, text: 'MALE'),
                  ),
                ),
                Expanded(
                  child: BMICard(
                    onTap: () {
                      // female card pressed
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    backgroundColor: selectedGender == Gender.female
                        ? kCardColor
                        : kInactiveCardColor,
                    child:
                        IconCard(icon: FontAwesomeIcons.venus, text: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BMICard(
              backgroundColor: kCardColor,
              child: Container(
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
                          height.toString(),
                          style: kLargeLabelTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                        ),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 30.0,
                        ),
                        inactiveTrackColor: kInactiveColor,
                        activeTrackColor: Colors.white,
                        thumbColor: kAccentColor,
                        overlayColor: kTransparentAccentColor,
                      ),
                      child: Slider(
                        min: kMinHeight,
                        max: kMaxHeight,
                        value: height.toDouble(),
                        onChanged: (newHeight) {
                          setState(() {
                            height = newHeight.toInt();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BMICard(
                    backgroundColor: kCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: <Widget>[
                            Text(
                              weight.toString(),
                              style: kLargeLabelTextStyle,
                            ),
                            Text(
                              'Kg',
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: BMICard(
                    backgroundColor: kCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: <Widget>[
                            Text(
                              age.toString(),
                              style: kLargeLabelTextStyle,
                            ),
                            Text(
                              'years',
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ActionButton(
            onTap: () {
              BMICalculator calculator =
                  BMICalculator(height: this.height, weight: this.weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultPage(
                          bmiValue: calculator.getBmi(),
                          bmiResult: calculator.getResult(),
                          bmiInterpretation: calculator.getInterpretation(),
                        )),
              );
            },
            text: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
