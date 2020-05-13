import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

// for all the ways we can customize the ThemeData visit:
// https://api.flutter.dev/flutter/material/ThemeData-class.html
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
    );
  }
}
