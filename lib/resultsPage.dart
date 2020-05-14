import 'package:bmi_calculator/bmiCalculator.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reuseableCard.dart';
import 'package:flutter/material.dart';
import 'bmiCalculator.dart';

class ResultsPage extends StatelessWidget {
  //final BmiCalculator bmiResults;
  final String result;
  final String resultText;
  final String interpretation;

  ResultsPage(
      {@required this.result,
      @required this.resultText,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULTS'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                "Your Results",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 50,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultLabel,
                  ),
                  Text(
                    result,
                    style: kResultText,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      interpretation,
                      style: kResultDescription,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: kBottomBarColor,
              height: kBottomBarHeight,
              width: double.infinity,
              child: Center(
                child: Text(
                  'RE CALCULATE',
                  style: kBottomBTN,
                ),
              ),
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(bottom: 20),
            ),
          ),
        ],
      ),
    );
  }
}
