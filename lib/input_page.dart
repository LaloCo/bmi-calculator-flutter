import 'package:flutter/material.dart';
import 'card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  Expanded(child: BMICard()),
                  Expanded(child: BMICard()),
                ],
              ),
            ),
            Expanded(child: BMICard()),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: BMICard()),
                  Expanded(child: BMICard()),
                ],
              ),
            ),
          ],
        ));
  }
}
