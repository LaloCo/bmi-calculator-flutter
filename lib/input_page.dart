import 'package:flutter/material.dart';
import 'card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_card.dart';
import 'genders.dart';
import 'slider_card.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.female;

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
              child: SliderCard(),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BMICard(
                    backgroundColor: kCardColor,
                  ),
                ),
                Expanded(
                  child: BMICard(
                    backgroundColor: kCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kAccentColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}
