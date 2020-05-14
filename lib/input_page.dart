import 'package:flutter/material.dart';
import 'card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_card.dart';
import 'genders.dart';

const bottomContainerHeight = 80.0;
const Color accentColor = Color(0xFFEB1555);
const Color cardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = cardColor;
  Gender selectedGender = Gender.female;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // male card pressed
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: BMICard(
                      backgroundColor: selectedGender == Gender.male
                          ? cardColor
                          : inactiveCardColor,
                      child:
                          IconCard(icon: FontAwesomeIcons.mars, text: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // female card pressed
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: BMICard(
                      backgroundColor: selectedGender == Gender.female
                          ? cardColor
                          : inactiveCardColor,
                      child: IconCard(
                          icon: FontAwesomeIcons.venus, text: 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BMICard(
              backgroundColor: cardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BMICard(
                    backgroundColor: cardColor,
                  ),
                ),
                Expanded(
                  child: BMICard(
                    backgroundColor: cardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: accentColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
