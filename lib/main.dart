import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

const Color darkColor = Color(0xFF0A0E21);

// for all the ways we can customize the ThemeData visit:
// https://api.flutter.dev/flutter/material/ThemeData-class.html
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: darkColor,
        scaffoldBackgroundColor: darkColor,
      ),
    );
  }
}
