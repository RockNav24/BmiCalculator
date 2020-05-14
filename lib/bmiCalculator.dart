import 'dart:math';

class BmiCalculator {
  BmiCalculator({this.height, this.weight});

  final int height;
  final int weight;
  double _result;

  String calculateBMI() {
    _result = weight / pow(height / 100, 2);
    return _result.toStringAsFixed(2);
  }

  String getResult() {
    if (_result <= 18.4) {
      return 'Underweight';
    } else if (_result >= 18.5 && _result <= 24.9) {
      return 'Healthy Weight';
    } else if (_result >= 25 && _result <= 29.9) {
      return 'Overweight';
    } else {
      return 'Obesity';
    }
  }

  String getInterpretation() {
    if (_result <= 18.4) {
      return 'You have a lower than normal, healthy body weight, you have to eat a bit more.';
    } else if (_result >= 18.5 && _result <= 24.9) {
      return 'You have a helthy body weight, good job!';
    } else if (_result >= 25 && _result <= 29.9) {
      return 'You have a heigher than noraml body weight, try to do some exercises!';
    } else {
      return 'You have a obesity, try to do some exercises every day and don\'t eat too much!';
    }
  }
}
