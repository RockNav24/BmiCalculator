import 'package:flutter/material.dart';
import 'inputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1E1D3A),
        scaffoldBackgroundColor: Color(0xFF1E1D3A),
        accentColor: Colors.pink,
      ),
      home: InputPage(),
    );
  }
}
