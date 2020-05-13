import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

// for all the ways we can customize the ThemeData visit:
// https://api.flutter.dev/flutter/material/ThemeData-class.html
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData(
        primaryColor: Colors.indigo,
        accentColor: Colors.deepOrange,
      ),
    );
  }
}

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
      body: Center(
        child: Text('Body Text'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}
